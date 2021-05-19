class Mutations::DestroyDatabase < Mutations::BaseMutation
  argument :id, ID, required: true

  field :databases, [Types::DatabaseType], null: false
  field :errors, [String], null: false

  def resolve(id:)
    database = Database.find(id)
    database.environments.each do |env|
      env.environment_x_dependencies.destroy_all
      if env.sprint
        env.sprint.delete
      end
    end
    database.environments.destroy_all

    databases = Database.all
    if database.delete
      {
        databases: databases,
        errors: []
      }
    else
      {
        databases: nil,
        errors: database.errors.full_messages
      }
    end
  end
end
