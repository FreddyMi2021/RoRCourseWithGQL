class Mutations::DestroyFramework < Mutations::BaseMutation
  argument :id, ID, required: true

  field :frameworks, [Types::FrameworkType], null: false
  field :errors, [String], null: false

  def resolve(id:)
    framework = Framework.find(id)
    framework.dependencies.each do |dep|
      dep.environment_x_dependencies.destroy_all
    end
    framework.dependencies.destroy_all
    framework.environments.each do |env|
      env.environment_x_dependencies.destroy_all
      if env.sprint
        env.sprint.delete
      end
    end
    framework.environments.destroy_all
    frameworks = Framework.all
    if framework.delete
      {
        frameworks: frameworks,
        errors: []
      }
    else
      {
        frameworks: nil,
        errors: framework.errors.full_messages
      }
    end
  end
end
