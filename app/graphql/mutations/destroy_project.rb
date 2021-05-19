class Mutations::DestroyProject < Mutations::BaseMutation
  argument :id, ID, required: true

  field :projects, [Types::ProjectType], null: false
  field :errors, [String], null: false

  def resolve(id:)
    project = Project.find(id)
    project.sprints.destroy_all
    projects = Project.all
    if project.delete
      {
        projects: projects,
        errors: []
      }
    else
      {
        projects: nil,
        errors: project.errors.full_messages
      }
    end
  end
end
