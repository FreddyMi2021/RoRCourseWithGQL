module Types
  class ProductOwnerType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :environments, [EnvironmentType], null: true
    field :projects, [ProjectType], null: true
  end
end
