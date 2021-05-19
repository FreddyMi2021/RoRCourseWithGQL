module Types
  class DependencyType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :cmd, String, null: true
    field :description, String, null: true
    field :framework, FrameworkType, null: true
    field :content_management_system, ContentManagementSystemType, null: true
    field :environment_x_dependencies, [EnvironmentXDependencyType], null: true
  end
end
