module Types
  class ProjectType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :description, String, null: true
    field :deadline, String, null: true
    field :product_owner, ProductOwnerType, null: true
    field :sprints, [SprintType], null: true
  end
end
