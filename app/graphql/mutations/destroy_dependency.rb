class Mutations::DestroyDependency < Mutations::BaseMutation
  argument :id, ID, required: true

  field :dependencies, [Types::DependencyType], null: false
  field :errors, [String], null: false

  def resolve(id:)
    dependency = Dependency.find(id)
    dependency.environment_x_dependencies.destroy_all
    dependencies = Dependency.all
    if dependency.delete
      {
        dependencies: dependencies,
        errors: []
      }
    else
      {
        dependencies: nil,
        errors: dependency.errors.full_messages
      }
    end
  end
end
