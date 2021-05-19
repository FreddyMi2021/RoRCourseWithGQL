class Mutations::CreateDependency < Mutations::BaseMutation
  argument :name, String, required: true, default_value: nil
  argument :cmd, String, required: false, default_value: nil
  argument :description, String, required: false, default_value: nil
  argument :framework_id, Int, required: false, default_value: nil # OPTIONAL
  argument :content_management_system_id, Int, required: false, default_value: nil # OPTIONAL

  field :dependency, Types::DependencyType, null: false
  field :errors, [String], null: false

  def resolve(name:, cmd:, description:, framework_id:, content_management_system_id:)
    dependency = Dependency.new(
      name: name,
      cmd: cmd,
      description: description,
      framework_id: framework_id,
      content_management_system_id: content_management_system_id
    )
    if dependency.save
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
