class Mutations::DestroyContentManagementSystem < Mutations::BaseMutation
  argument :id, ID, required: true

  field :content_management_systems, [Types::ContentManagementSystemType], null: false
  field :errors, [String], null: false

  def resolve(id:)
    content_management_system = ContentManagementSystem.find(id)
    content_management_system.dependencies.each do |dep|
      dep.environment_x_dependencies.destroy_all
    end
    content_management_system.dependencies.destroy_all
    content_management_system.environments.each do |env|
      env.environment_x_dependencies.destroy_all
      if env.sprint
        env.sprint.delete
      end
    end
    content_management_system.environments.destroy_all
    content_management_systems = ContentManagementSystem.all
    if content_management_system.delete
      {
        content_management_systems: content_management_systems,
        errors: []
      }
    else
      {
        content_management_systems: nil,
        errors: content_management_system.errors.full_messages
      }
    end
  end
end
