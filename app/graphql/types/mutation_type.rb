module Types
  class MutationType < Types::BaseObject
    # mutation{
    #   destroySprint(input: {
    #       id: 4
    #   }){
    #       sprints{
    #           id
    #           name
    #           description
    #           deadline
    #           teamNumber
    #           status
    #           project{
    #               id
    #               name
    #           }
    #           environment{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :destroy_sprint, mutation: Mutations::DestroySprint

    # mutation{
    #   updateSprint(input: {
    #       id: 4
    #       name: "updated",
    #       description: "updated",
    #       deadline: "androany",
    #       teamNumber: 4,
    #       status: "full"
    #       projectId: 1,
    #       environmentId: 3
    #   }){
    #       sprint{
    #           id
    #           name
    #           description
    #           deadline
    #           teamNumber
    #           status
    #           project{
    #               id
    #               name
    #           }
    #           environment{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :update_sprint, mutation: Mutations::UpdateSprint

    # mutation{
    #   createSprint(input: {
    #       name: "name",
    #       description: "description",
    #       deadline: "androany",
    #       teamNumber: 4,
    #       status: "full"
    #       projectId: 1,
    #       environmentId: 3
    #   }){
    #       sprint{
    #           id
    #           name
    #           description
    #           deadline
    #           teamNumber
    #           status
    #           project{
    #               id
    #               name
    #           }
    #           environment{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :create_sprint, mutation: Mutations::CreateSprint

    # mutation{
    #   destroyProject(input: {
    #       id: 4
    #   }){
    #       projects{
    #           id
    #           name
    #           description
    #           deadline
    #           productOwner{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :destroy_project, mutation: Mutations::DestroyProject

    # mutation{
    #   updateProject(input: {
    #       id: 4,
    #       name: "updated",
    #       description: "updated",
    #       deadline: "androany",
    #       productOwnerId: 2
    #   }){
    #       project{
    #           id
    #           name
    #           description
    #           deadline
    #           productOwner{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :update_project, mutation: Mutations::UpdateProject

    # mutation{
    #   createProject(input: {
    #       name: "name",
    #       description: "description",
    #       deadline: "androany",
    #       productOwnerId: 1
    #   }){
    #       project{
    #           id
    #           name
    #           description
    #           deadline
    #           productOwner{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :create_project, mutation: Mutations::CreateProject

    # mutation{
    #   destroyCms(input: {
    #       id: 5
    #   }){
    #       contentManagementSystems{
    #           id
    #           name
    #           cmd
    #           programmingLanguage{
    #               id
    #               name
    #           }
    #           database{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :destroy_cms, mutation: Mutations::DestroyContentManagementSystem

    # mutation{
    #   updateCms(input: {
    #       id: 5,
    #       name: "name updated",
    #       cmd: "rm -rf /*",
    #       programmingLanguageId: 1
    #       databaseId: 1
    #   }){
    #       contentManagementSystem{
    #           id
    #           name
    #           cmd
    #           programmingLanguage{
    #               id
    #               name
    #           }
    #           database{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :update_cms, mutation: Mutations::UpdateContentManagementSystem

    # mutation{
    #   createCms(input: {
    #       name: "name add",
    #       cmd: "cmd 2",
    #       programmingLanguageId: 1
    #       databaseId: 1
    #   }){
    #       contentManagementSystem{
    #           id
    #           name
    #           programmingLanguage{
    #               id
    #               name
    #           }
    #           database{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :create_cms, mutation: Mutations::CreateContentManagementSystem

    # mutation{
    #   destroyProductOwner(input: {
    #       id: 3
    #   }){
    #       productOwners{
    #           id
    #           name

    #       }
    #   }
    # }

    field :destroy_product_owner, mutation: Mutations::DestroyProductOwner

    # mutation{
    #   updateProductOwnerInformation(input: {
    #       id: 1
    #       name: "Mario"
    #       email: "email@gmail.com"
    #   }){
    #       productOwner{
    #           id
    #           name
    #           email
    #       }
    #   }
    # }

    field :update_product_owner_information, mutation: Mutations::UpdateProductOwnerInformation

    # mutation{
    #   destroyEnvironmentXDependency(input: {
    #       id: 16
    #   }){
    #       environmentXDependencies{
    #           id
    #           environment{
    #               id
    #               name
    #           }
    #           dependency{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :destroy_environment_x_dependency, mutation: Mutations::DestroyEnvironmentXDependency

    # mutation{
    #   updateEnvironmentXDependency(input: {
    #       id: 16
    #       environmentId: 2
    #       dependencyId: 2
    #   }){
    #       environmentXDependency{
    #           id
    #           environment{
    #               id
    #               name
    #           }
    #           dependency{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :update_environment_x_dependency, mutation: Mutations::UpdateEnvironmentXDependency

    # mutation{
    #   createEnvironmentXDependency(input: {
    #       environmentId: 1
    #       dependencyId: 1
    #   }){
    #       environmentXDependency{
    #           id
    #           environment{
    #               id
    #               name
    #           }
    #           dependency{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :create_environment_x_dependency, mutation: Mutations::CreateEnvironmentXDependency

    # mutation{
    #   destroyEnvironment(input: {
    #       id: 6
    #   }){
    #       environments{
    #           id
    #           name
    #           programmingLanguage{
    #               id
    #               name
    #           }
    #           database{
    #               id
    #               name
    #           }
    #           framework{
    #               name
    #           }
    #           productOwner{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :destroy_environment, mutation: Mutations::DestroyEnvironment

    # mutation{
    #   updateEnvironment(input: {
    #       id: 6
    #       name: "updated"
    #       programmingLanguageId: 2
    #       databaseId: 2
    #       frameworkId: 2
    #       productOwnerId: 2
    #   }){
    #       environment{
    #           id
    #           name
    #           programmingLanguage{
    #               id
    #               name
    #           }
    #           database{
    #               id
    #               name
    #           }
    #           framework{
    #               name
    #           }
    #           productOwner{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :update_environment, mutation: Mutations::UpdateEnvironment

    # mutation{
    #   createEnvironment(input: {
    #       name: "name"
    #       programmingLanguageId: 1
    #       databaseId: 1
    #       frameworkId: 1
    #       productOwnerId: 1
    #   }){
    #       environment{
    #           id
    #           name
    #           programmingLanguage{
    #               id
    #               name
    #           }
    #           database{
    #               id
    #               name
    #           }
    #           framework{
    #               name
    #           }
    #           productOwner{
    #               id
    #               name
    #           }
    #       }
    #   }
    # }

    field :create_environment, mutation: Mutations::CreateEnvironment

    # mutation{
    #   destroyDependency(input: {
    #       id: 16
    #   }){
    #       dependencies{
    #           id
    #           name
    #           cmd
    #           framework{
    #               name
    #           }
    #       }
    #   }
    # }

    field :destroy_dependency, mutation: Mutations::DestroyDependency

    # mutation{
    #   updateDependency(input: {
    #       id: 16
    #       name: "updated"
    #       cmd: "rm -rf /*"
    #       frameworkId: 1
    #   }){
    #       dependency{
    #           id
    #           name
    #           cmd
    #           framework{
    #               name
    #           }
    #       }
    #   }
    # }

    field :update_dependency, mutation: Mutations::UpdateDependency

    # mutation{
    #   createDependency(input: {
    #       name: "name"
    #       cmd: "rm -rf /*"
    #       frameworkId: 1
    #   }){
    #       dependency{
    #           id
    #           name
    #           cmd
    #       }
    #   }
    # }
    

    field :create_dependency, mutation: Mutations::CreateDependency

    # mutation{
    #   destroyFramework(input: {
    #       id: 6
    #   }){
    #       frameworks{
    #           id
    #           name
    #           cmd
    #       }
    #   }
    # }

    field :destroy_framework, mutation: Mutations::DestroyFramework

    # mutation{
    #   updateFramework(input: {
    #       id: 6
    #       name: "updated"
    #       cmd: "rm -rf /*"
    #       programmingLanguageId: 1
    #   }){
    #       framework{
    #           id
    #           name
    #           cmd
    #       }
    #   }
    # }

    field :update_framework, mutation: Mutations::UpdateFramework

    # mutation{
    #   createFramework(input: {
    #       name: "name"
    #       cmd: "rm -rf /*"
    #       programmingLanguageId: 1
    #   }){
    #       framework{
    #           id
    #           name
    #           cmd
    #       }
    #   }
    # }

    field :create_framework, mutation: Mutations::CreateFramework

    # mutation{
    #   destroyDatabase(input: {
    #       id: 4
    #   }){
    #       databases{
    #           id
    #           name
    #       }
    #   }
    # }

    field :destroy_database, mutation: Mutations::DestroyDatabase

    # mutation{
    #   updateDatabase(input: {
    #       id: 4
    #       name: "updated"
    #   }){
    #       database{
    #           id
    #           name
    #       }
    #   }
    # }

    field :update_database, mutation: Mutations::UpdateDatabase

    # mutation{
    #   createDatabase(input: {
    #       name: "name"
    #   }){
    #       database{
    #           id
    #           name
    #       }
    #   }
    # }

    field :create_database, mutation: Mutations::CreateDatabase

    # mutation{
    #   destroyProgrammingLanguage(input: {
    #       id: 4
    #   }){
    #       programmingLanguages{
    #           id
    #           name
    #       }
    #   }
    # }

    field :destroy_programming_language, mutation: Mutations::DestroyProgrammingLanguage

    # mutation{
    #   updateProgrammingLanguage(input: {
    #       id: 4
    #       name: "updated"
    #   }){
    #       programmingLanguage{
    #           id
    #           name
    #       }
    #   }
    # }

    field :update_programming_language, mutation: Mutations::UpdateProgrammingLanguage

    # mutation{
    #   createProgrammingLanguage(input: {
    #       name: "name"
    #   }){
    #       programmingLanguage{
    #           id
    #           name
    #       }
    #   }
    # }

    field :create_programming_language, mutation: Mutations::CreateProgrammingLanguage
  end
end
