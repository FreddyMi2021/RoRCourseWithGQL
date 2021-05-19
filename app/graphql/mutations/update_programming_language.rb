class Mutations::UpdateProgrammingLanguage < Mutations::BaseMutation
  argument :id, ID, required: true, default_value: nil
  argument :name, String, required: false, default_value: nil

  field :programming_language, Types::ProgrammingLanguageType, null: false
  field :errors, [String], null: false

  def resolve(id:, name:)
    programming_language = ProgrammingLanguage.find(id)
    if programming_language.update(
      name: name
    )
      {
        programming_language: programming_language,
        errors: []
      }
    else
      {
        programming_language: nil,
        errors: programming_language.errors.full_messages
      }
    end
  end
end
