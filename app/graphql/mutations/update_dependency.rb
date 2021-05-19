class Mutations::UpdateDependency < Mutations::BaseMutation
  argument :id, ID, required: true, default_value: nil
  argument :name, String, required: false, default_value: nil
  argument :cmd, String, required: false, default_value: nil
  argument :description, String, required: false, default_value: nil
  argument :framework_id, Int, required: false, default_value: nil

  field :dependency, Types::DependencyType, null: false
  field :errors, [String], null: false

  def resolve(id:, name:, cmd:, description:, framework_id:)
    dependency = Dependency.find(id)
    if dependency.update(
      name: name,
      cmd: cmd,
      description: description,
      framework_id: framework_id
    )
      {
        dependency: dependency,
        errors: []
      }
    else
      {
        dependency: nil,
        errors: dependency.errors.full_messages
      }
    end
  end
end
