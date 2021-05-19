class Mutations::DestroyProgrammingLanguage < Mutations::BaseMutation
  argument :id, ID, required: true

  field :programming_languages, [Types::ProgrammingLanguageType], null: false
  field :errors, [String], null: false

  def resolve(id:)
    programming_language = ProgrammingLanguage.find(id)
    programming_language.environments.each do |env|
      env.environment_x_dependencies.destroy_all
      if !env.sprint.nil?
        env.sprint.delete
      end
    end
    programming_language.environments.destroy_all
    programming_language.frameworks.each do |framework|
      framework.dependencies.each do |dep|
        dep.environment_x_dependencies.destroy_all
      end
      framework.dependencies.destroy_all
      framework.environments.each do |env|
        env.environment_x_dependencies.destroy_all
        if !env.sprint.nil?
          framework.environments.sprint.delete
        end
      end

      framework.environments.destroy_all
    end
    programming_language.frameworks.destroy_all
    programming_language.content_management_systems.each do |cms|
      cms.environments.each do |env|
        env.environment_x_dependencies.destroy_all
        if env.sprint
          env.sprint.delete
        end
      end
      cms.environments.destroy_all
      cms.dependencies.destroy_all
    end
    programming_language.content_management_systems.destroy_all
    programming_languages = ProgrammingLanguage.all
    if programming_language.delete
      {
        programming_languages: programming_languages,
        errors: []
      }
    else
      {
        programming_languages: nil,
        errors: programming_language.errors.full_messages
      }
    end
  end
end
