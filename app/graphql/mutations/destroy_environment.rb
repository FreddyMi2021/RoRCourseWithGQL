class Mutations::DestroyEnvironment < Mutations::BaseMutation
  argument :id, ID, required: true

  field :environments, [Types::EnvironmentType], null: false
  field :errors, [String], null: false

  def resolve(id:)
    environment = Environment.find(id)
    environment.environment_x_dependencies.destroy_all
    if environment.sprint
      environment.sprint.delete
    end
    environments = Environment.all
    if environment.delete
      {
        environments: environments,
        errors: []
      }
    else
      {
        environments: nil,
        errors: environment.errors.full_messages
      }
    end
  end
end
