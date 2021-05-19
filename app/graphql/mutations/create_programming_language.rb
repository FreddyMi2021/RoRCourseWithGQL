class Mutations::CreateProgrammingLanguage < Mutations::BaseMutation
  argument :name, String, required: true, default_value: nil

  field :programming_language, Types::ProgrammingLanguageType, null: false
  field :errors, [String], null: false

  def resolve(name:)
    programming_language = ProgrammingLanguage.new(
      name: name
    )
    if programming_language.save
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
