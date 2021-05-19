class Mutations::DestroyProductOwner < Mutations::BaseMutation
  argument :id, ID, required: true

  field :product_owners, [Types::ProductOwnerType], null: false
  field :errors, [String], null: false

  def resolve(id:)
    product_owner = ProductOwner.find(id)
    product_owner.environments.each do |environment|
      environment.environment_x_dependencies.destroy_all
      if environment.sprint
        environment.sprint.delete
      end
    end
    product_owner.environments.destroy_all
    product_owner.projects.each do |project|
      project.sprints.destroy_all
    end
    product_owner.projects.destroy_all
    product_owners = ProductOwner.all
    if product_owner.delete
      {
        product_owners: product_owners,
        errors: []
      }
    else
      {
        product_owners: nil,
        errors: product_owners.errors.full_messages
      }
    end
  end
end
