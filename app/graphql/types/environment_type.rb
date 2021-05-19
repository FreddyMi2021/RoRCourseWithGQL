module Types
  class EnvironmentType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :programming_language, ProgrammingLanguageType, null: true
    field :database, DatabaseType, null: true
    field :framework, FrameworkType, null: true
    field :content_management_system, ContentManagementSystemType, null: true
    field :product_owner, ProductOwnerType, null: true
    field :sprint, SprintType, null: true
    field :environment_x_dependencies, [EnvironmentXDependencyType], null: true
  end
end
