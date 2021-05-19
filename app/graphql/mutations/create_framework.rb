class Mutations::CreateFramework < Mutations::BaseMutation
  argument :name, String, required: true, default_value: nil
  argument :cmd, String, required: false, default_value: nil
  argument :programming_language_id, Int, required: false, default_value: nil

  field :framework, Types::FrameworkType, null: false
  field :errors, [String], null: false

  def resolve(name:, cmd:, programming_language_id:)
    framework = Framework.new(
      name: name,
      cmd: cmd,
      programming_language_id: programming_language_id
    )
    if framework.save
      {
        framework: framework,
        errors: []
      }
    else
      {
        framework: nil,
        errors: framework.errors.full_messages
      }
    end
  end
end
