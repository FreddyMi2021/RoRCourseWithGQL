module Types
  class DatabaseType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :environments, [EnvironmentType], null: true
  end
end
