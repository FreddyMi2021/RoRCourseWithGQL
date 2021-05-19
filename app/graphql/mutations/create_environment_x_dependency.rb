class Mutations::CreateEnvironmentXDependency < Mutations::BaseMutation
  argument :environment_id, Int, required: true, default_value: nil
  argument :dependency_id, Int, required: true, default_value: nil

  field :environment_x_dependency, Types::EnvironmentXDependencyType, null: false
  field :errors, [String], null: false

  def resolve(environment_id:, dependency_id:)
    environment_x_dependency = EnvironmentXDependency.new(
      environment_id: environment_id,
      dependency_id: dependency_id
    )
    if environment_x_dependency.save
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
