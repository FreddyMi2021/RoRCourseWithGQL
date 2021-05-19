class Mutations::UpdateProject < Mutations::BaseMutation
  argument :id, ID, required: true, default_value: nil
  argument :name, String, required: true, default_value: nil
  argument :description, String, required: true, default_value: nil
  argument :deadline, String, required: true, default_value: nil
  argument :product_owner_id, Int, required: true, default_value: nil

  field :project, Types::ProjectType, null: false
  field :errors, [String], null: false

  def resolve(id:, name:, description:, deadline:, product_owner_id:)
    project = Project.find(id)
    if project.update(
      name: name,
      description: description,
      deadline: deadline,
      product_owner_id: product_owner_id
    )
      {
        project: project,
        errors: []
      }
    else
      {
        project: nil,
        errors: project.errors.full_messages
      }
    end
  end
end
