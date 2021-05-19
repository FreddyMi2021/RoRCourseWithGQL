class Mutations::CreateEnvironment < Mutations::BaseMutation
  argument :name, String, required: true, default_value: nil
  argument :programming_language_id, Int, required: true, default_value: nil
  argument :database_id, Int, required: true, default_value: nil
  argument :framework_id, Int, required: false, default_value: nil
  argument :content_management_system_id, Int, required: false, default_value: nil
  argument :product_owner_id, Int, required: true, default_value: nil

  field :environment, Types::EnvironmentType, null: false
  field :errors, [String], null: false

  def resolve(name:, programming_language_id:, database_id:, framework_id:, content_management_system_id:, product_owner_id:)
    environment = Environment.new(
      name: name,
      programming_language_id: programming_language_id,
      database_id: database_id,
      framework_id: framework_id,
      content_management_system_id: content_management_system_id,
      product_owner_id: product_owner_id
    )
    if environment.save
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
