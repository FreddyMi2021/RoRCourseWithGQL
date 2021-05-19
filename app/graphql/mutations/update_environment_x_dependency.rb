class Mutations::UpdateEnvironmentXDependency < Mutations::BaseMutation
  argument :id, ID, required: true, default_value: nil
  argument :environment_id, Int, required: false, default_value: nil
  argument :dependency_id, Int, required: false, default_value: nil

  field :environment_x_dependency, Types::EnvironmentXDependencyType, null: false
  field :errors, [String], null: false

  def resolve(id:, environment_id:, dependency_id:)
    environment_x_dependency = EnvironmentXDependency.find(id)
    if environment_x_dependency.update(
      environment_id: environment_id,
      dependency_id: dependency_id
    )
      {
        environment_x_dependency: environment_x_dependency,
        errors: []
      }
    else
      {
        environment_x_dependency: nil,
        errors: environment_x_dependency.errors.full_messages
      }
    end
  end
end
