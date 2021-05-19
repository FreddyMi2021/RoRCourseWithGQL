class Mutations::DestroyEnvironmentXDependency < Mutations::BaseMutation
  argument :id, ID, required: true

  field :environment_x_dependencies, [Types::EnvironmentXDependencyType], null: false
  field :errors, [String], null: false

  def resolve(id:)
    environment_x_dependencie = EnvironmentXDependency.find(id)
    environment_x_dependencies = EnvironmentXDependency.all
    if environment_x_dependencie.delete
      {
        environment_x_dependencies: environment_x_dependencies,
        errors: []
      }
    else
      {
        environment_x_dependencies: nil,
        errors: environment_x_dependencie.errors.full_messages
      }
    end
  end
end
