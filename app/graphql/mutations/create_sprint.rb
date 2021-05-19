class Mutations::CreateSprint < Mutations::BaseMutation
  argument :name, String, required: true, default_value: nil
  argument :description, String, required: true, default_value: nil
  argument :deadline, String, required: true, default_value: nil
  argument :team_number, Int, required: true, default_value: nil
  argument :status, String, required: true, default_value: nil
  argument :project_id, Int, required: true, default_value: nil
  argument :environment_id, Int, required: true, default_value: nil

  field :sprint, Types::SprintType, null: false
  field :errors, [String], null: false

  def resolve(name:, description:, deadline:, team_number:, status:, project_id:, environment_id:)
    sprint = Sprint.new(
      name: name,
      description: description,
      deadline: deadline,
      team_number: team_number,
      status: status,
      project_id: project_id,
      environment_id: environment_id
    )
    if sprint.save
      {
        sprint: sprint,
        errors: []
      }
    else
      {
        sprint: nil,
        errors: sprint.errors.full_messages
      }
    end
  end
end
