class Mutations::CreateDatabase < Mutations::BaseMutation
  argument :name, String, required: true, default_value: nil

  field :database, Types::DatabaseType, null: false
  field :errors, [String], null: false

  def resolve(name:)
    database = Database.new(
      name: name
    )
    if database.save
      {
        database: database,
        errors: []
      }
    else
      {
        database: nil,
        errors: database.errors.full_messages
      }
    end
  end
end
