class Mutations::DestroySprint < Mutations::BaseMutation
  argument :id, ID, required: true

  field :sprints, [Types::SprintType], null: false
  field :errors, [String], null: false

  def resolve(id:)
    sprint = Sprint.find(id)
    sprints = Sprint.all
    if sprint.delete
      {
        sprints: sprints,
        errors: []
      }
    else
      {
        sprints: nil,
        errors: sprint.errors.full_messages
      }
    end
  end
end
