module Types
  class ContentManagementSystemType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :cmd, String, null: true
    field :programming_language, ProgrammingLanguageType, null: true
    field :dependencies, [DependencyType], null: true
    field :environments, [EnvironmentType], null: true
  end
end
