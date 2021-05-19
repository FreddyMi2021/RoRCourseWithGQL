module Types
  class EnvironmentXDependencyType < Types::BaseObject
    field :id, ID, null: false
    field :environment, EnvironmentType, null: true
    field :dependency, DependencyType, null: true
  end
end
