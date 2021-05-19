class Mutations::UpdateDatabase < Mutations::BaseMutation
  argument :id, ID, required: true, default_value: nil
  argument :name, String, required: false, default_value: nil

  field :database, Types::DatabaseType, null: false
  field :errors, [String], null: false

  def resolve(id:, name:)
    database = Database.find(id)
    if database.update(
      name: name
    )
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
