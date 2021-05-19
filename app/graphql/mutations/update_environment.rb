class Mutations::UpdateEnvironment < Mutations::BaseMutation
  argument :id, ID, required: true, default_value: nil
  argument :name, String, required: false, default_value: nil
  argument :programming_language_id, Int, required: false, default_value: nil
  argument :database_id, Int, required: false, default_value: nil
  argument :framework_id, Int, required: false, default_value: nil
  argument :content_management_system_id, Int, required: false, default_value: nil
  argument :product_owner_id, Int, required: false, default_value: nil

  field :environment, Types::EnvironmentType, null: false
  field :errors, [String], null: false

  def resolve(id:, name:, programming_language_id:, database_id:, framework_id:, content_management_system_id:, product_owner_id:)
    environment = Environment.find(id)
    if environment.update(
      name: name,
      programming_language_id: programming_language_id,
      database_id: database_id,
      framework_id: framework_id,
      content_management_system_id: content_management_system_id,
      product_owner_id: product_owner_id
    )
      {
        environment: environment,
        errors: []
      }
    else
      {
        environment: nil,
        errors: environment.errors.full_messages
      }
    end
  end
end
