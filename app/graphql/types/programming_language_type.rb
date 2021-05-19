module Types
  class ProgrammingLanguageType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :frameworks, [FrameworkType], null: true
    field :environments, [EnvironmentType], null: true
    field :content_management_systems, [ContentManagementSystemType], null: true
  end
end
