class Mutations::CreateContentManagementSystem < Mutations::BaseMutation
  argument :name, String, required: true, default_value: nil
  argument :cmd, String, required: false, default_value: nil
  argument :programming_language_id, Int, required: false, default_value: nil

  field :content_management_system, Types::ContentManagementSystemType, null: false
  field :errors, [String], null: false

  def resolve(name:, cmd:, programming_language_id:)
    content_management_system = ContentManagementSystem.new(
      name: name,
      cmd: cmd,
      programming_language_id: programming_language_id
    )
    if content_management_system.save
      {
        content_management_system: content_management_system,
        errors: []
      }
    else
      {
        content_management_system: nil,
        errors: content_management_system.errors.full_messages
      }
    end
  end
end
