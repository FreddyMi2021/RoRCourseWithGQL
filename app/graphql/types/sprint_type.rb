module Types
  class SprintType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :description, String, null: true
    field :deadline, String, null: true
    field :team_number, String, null: true
    field :status, String, null: true
    field :project, ProjectType, null: true
    field :environment, EnvironmentType, null: true
  end
end
