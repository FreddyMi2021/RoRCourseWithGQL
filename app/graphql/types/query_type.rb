module Types
  class QueryType < Types::BaseObject
    # query_sprint

    # {
    #   sprints(page: 2, perPage: 2){
    #       id
    #       name
    #       description
    #       deadline
    #       teamNumber
    #       status
    #       project{
    #           id
    #           name
    #       }
    #       environment{
    #           id
    #           name
    #       }
    #   }
    # }

    field :sprints, [Types::SprintType], null: false do
      argument :page, Int, required: true
      argument :per_page, Int, required: true
    end
    def sprints(page:, per_page:)
      Sprint.order("id ASC").limit(per_page).offset((page.to_i - 1) * per_page.to_i)
    end

    # {
    #   sprint(id: 1){
    #       id
    #       name
    #       description
    #       deadline
    #       teamNumber
    #       status
    #       project{
    #           id
    #           name
    #       }
    #       environment{
    #           id
    #           name
    #       }
    #   }
    # }

    field :sprint, Types::SprintType, null: false do
      argument :id, ID, required: true
    end
    def sprint(id:)
      Sprint.find_by(id: id)
    end

    # {
    #   allSprints{
    #       id
    #       name
    #       description
    #       deadline
    #       teamNumber
    #       status
    #       project{
    #           id
    #           name
    #       }
    #       environment{
    #           id
    #           name
    #       }
    #   }
    # }

    field :all_sprints, [Types::SprintType], null: false
    def all_sprints
      Sprint.all.order("id DESC")
    end

    #################################################

    # query_project

    # {
    #   projects(page: 1, perPage: 2){
    #       id
    #       name
    #       description
    #       deadline
    #       productOwner{
    #           id
    #           name
    #       }
    #   }
    # }

    field :projects, [Types::ProjectType], null: false do
      argument :page, Int, required: true
      argument :per_page, Int, required: true
    end
    def projects(page:, per_page:)
      Project.order("id ASC").limit(per_page).offset((page.to_i - 1) * per_page.to_i)
    end

    # {
    #   project(id: 1){
    #       id
    #       name
    #       description
    #       deadline
    #       productOwner{
    #           id
    #           name
    #       }
    #   }
    # }

    field :project, Types::ProjectType, null: false do
      argument :id, ID, required: true
    end
    def project(id:)
      Project.find_by(id: id)
    end

    # {
    #   allProjects{
    #       id
    #       name
    #       description
    #       deadline
    #       productOwner{
    #           id
    #           name
    #       }
    #   }
    # }

    field :all_projects, [Types::ProjectType], null: false
    def all_projects
      Project.all.order("id DESC")
    end

    #################################################

    # /query_content_management_system

    # {
    #   cmsPerPage(page: 2, perPage: 2){
    #       id
    #       name
    #       programmingLanguage{
    #           id
    #           name
    #       }
    #       database{
    #           id
    #           name
    #       }
    #       dependencies{
    #           id
    #           name
    #       }
    #   }
    # }

    field :cms_per_page, [Types::ContentManagementSystemType], null: false do
      argument :page, Int, required: true
      argument :per_page, Int, required: true
    end
    def cms_per_page(page:, per_page:)
      ContentManagementSystem.order("id ASC").limit(per_page).offset((page.to_i - 1) * per_page.to_i)
    end

    # {
    #   cms(id: 1){
    #       id
    #       name
    #       programmingLanguage{
    #           id
    #           name
    #       }
    #       database{
    #           id
    #           name
    #       }
    #       dependencies{
    #           id
    #           name
    #       }
    #   }
    # }

    field :cms, Types::ContentManagementSystemType, null: false do
      argument :id, ID, required: true
    end
    def cms(id:)
      ContentManagementSystem.find_by(id: id)
    end

    # {
    #   allCms{
    #       id
    #       name
    #       programmingLanguage{
    #           id
    #           name
    #       }
    #       database{
    #           id
    #           name
    #       }
    #       dependencies{
    #           id
    #           name
    #       }
    #   }
    # }

    field :all_cms, [Types::ContentManagementSystemType], null: false
    def all_cms
      ContentManagementSystem.all.order("id DESC")
    end

    #################################################

    # /query_admin

    # {
    #   countAdmin
    # }

    field :count_admin, Int, null: false
    def count_admin
      Admin.all.count
    end

    # {
    #   admins(page: 1, perPage: 2){
    #       id
    #       name
    #       email
    #   }
    # }

    field :admins, [Types::AdminType], null: false do
      argument :page, Int, required: true
      argument :per_page, Int, required: true
    end
    def admins(page:, per_page:)
      Admin.order("id ASC").limit(per_page).offset((page.to_i - 1) * per_page.to_i)
    end

    # {
    #   admin(id: 1){
    #       id
    #       name
    #       email
    #   }
    # }

    field :admin, Types::AdminType, null: false do
      argument :id, ID, required: true
    end
    def admin(id:)
      Admin.find_by(id: id)
    end

    # {
    #   allAdmins{
    #       id
    #       name
    #       email
    #   }
    # }

    field :all_admins, [Types::AdminType], null: false
    def all_admins
      Admin.all.order("id DESC")
    end

    #################################################

    # /query_product_owner

    # {
    #   countProductOwner
    # }

    field :count_product_owner, Int, null: false
    def count_product_owner
      ProductOwner.all.count
    end

    # {
    #   productOwners(page: 1, perPage: 2){
    #       id
    #       name
    #       email
    #   }
    # }

    field :product_owners, [Types::ProductOwnerType], null: false do
      argument :page, Int, required: true
      argument :per_page, Int, required: true
    end
    def product_owners(page:, per_page:)
      ProductOwner.order("id ASC").limit(per_page).offset((page.to_i - 1) * per_page.to_i)
    end

    # {
    #   productOwner(id: 1){
    #       id
    #       name
    #       email
    #   }
    # }

    field :product_owner, Types::ProductOwnerType, null: false do
      argument :id, ID, required: true
    end
    def product_owner(id:)
      ProductOwner.find_by(id: id)
    end

    # {
    #   allProductOwners{
    #       id
    #       name
    #       email
    #   }
    # }

    field :all_product_owners, [Types::ProductOwnerType], null: false
    def all_product_owners
      ProductOwner.all.order("id DESC")
    end

    #################################################

    # /query_environment_x_dependency

    # {
    #   environmentXDependency(id: 1){
    #       id
    #       environment{
    #           id
    #       }
    #       dependency{
    #           id
    #           name
    #       }
    #   }
    # }

    field :environment_x_dependency, Types::EnvironmentXDependencyType, null: false do
      argument :id, ID, required: true
    end
    def environment_x_dependency(id:)
      EnvironmentXDependency.find_by(id: id)
    end

    # {
    #   allEnvironmentXDependencies{
    #       id
    #       environment{
    #           id
    #       }
    #       dependency{
    #           id
    #           name
    #       }
    #   }
    # }

    field :all_environment_x_dependencies, [Types::EnvironmentXDependencyType], null: false
    def all_environment_x_dependencies
      EnvironmentXDependency.all.order("id DESC")
    end

    #################################################

    # /query_environment

    # {
    #   environmentsByProductOwner(productOwnerId: 3){
    #       id
    #       name
    #   }
    # }

    field :environments_by_product_owner, [Types::EnvironmentType], null: false do
      argument :product_owner_id, Int, required: true
    end
    def environments_by_product_owner(product_owner_id:)
      Environment.where(product_owner_id: product_owner_id).order("id DESC")
    end

    # {
    #   environmentsByFramework(frameworkId: 1){
    #       id
    #       name
    #   }
    # }

    field :environments_by_framework, [Types::EnvironmentType], null: false do
      argument :framework_id, Int, required: true
    end
    def environments_by_framework(framework_id:)
      Environment.where(framework_id: framework_id).order("id DESC")
    end

    # {
    #   environmentsByDatabase(databaseId: 1){
    #       id
    #       name
    #   }
    # }

    field :environments_by_database, [Types::EnvironmentType], null: false do
      argument :database_id, Int, required: true
    end
    def environments_by_database(database_id:)
      Environment.where(database_id: database_id).order("id DESC")
    end

    # {
    #   environmentsByLanguage(programmingLanguageId: 1){
    #       id
    #       name
    #   }
    # }

    field :environments_by_language, [Types::EnvironmentType], null: false do
      argument :programming_language_id, Int, required: true
    end
    def environments_by_language(programming_language_id:)
      Environment.where(programming_language_id: programming_language_id).order("id DESC")
    end

    # {
    #   countEnvironment
    # }

    field :count_environment, Int, null: false
    def count_environment
      Environment.all.count
    end

    # {
    #   environments(page: 1, perPage: 2){
    #       id
    #       name
    #       programmingLanguage{
    #           id
    #           name
    #       }
    #       database{
    #           id
    #           name
    #       }
    #       framework{
    #           id
    #           name
    #       }

    #   }
    # }

    field :environments, [Types::EnvironmentType], null: false do
      argument :page, Int, required: true
      argument :per_page, Int, required: true
    end
    def environments(page:, per_page:)
      Environment.order("id ASC").limit(per_page).offset((page.to_i - 1) * per_page.to_i)
    end

    # {
    #   environment(id: 1){
    #       id
    #       name
    #       programmingLanguage{
    #           id
    #           name
    #       }
    #       database{
    #           id
    #           name
    #       }
    #       framework{
    #           id
    #           name
    #       }

    #   }
    # }

    field :environment, Types::EnvironmentType, null: false do
      argument :id, ID, required: true
    end
    def environment(id:)
      Environment.find_by(id: id)
    end

    # {
    #   allEnvironments{
    #       id
    #       name
    #       programmingLanguage{
    #           id
    #           name
    #       }
    #       database{
    #           id
    #           name
    #       }
    #       framework{
    #           id
    #           name
    #       }

    #   }
    # }

    field :all_environments, [Types::EnvironmentType], null: false
    def all_environments
      Environment.all.order("id DESC")
    end

    #################################################

    # /query_dependencies

    # {
    #   countDependencyByEnv(environmentId: 1)
    # }

    field :count_dependency_by_env, Int, null: false do
      argument :environment_id, Int, required: true
    end
    def count_dependency_by_env(environment_id:)
      EnvironmentXDependency.where(environment_id: environment_id).count
    end

    # {
    #   countDependency
    # }

    field :count_dependency, Int, null: false
    def count_dependency
      Dependency.all.count
    end

    # {
    #   dependencies(page: 1, perPage: 2){
    #       id
    #       name
    #       cmd
    #       description
    #       framework {
    #           id
    #           name
    #       }
    #   }
    # }

    field :dependencies, [Types::DependencyType], null: false do
      argument :page, Int, required: true
      argument :per_page, Int, required: true
    end
    def dependencies(page:, per_page:)
      Dependency.order("id ASC").limit(per_page).offset((page.to_i - 1) * per_page.to_i)
    end

    # {
    #   dependency(id: 1){
    #       id
    #       name
    #       cmd
    #       description
    #       framework {
    #           id
    #           name
    #       }
    #   }
    # }

    field :dependency, Types::DependencyType, null: false do
      argument :id, ID, required: true
    end
    def dependency(id:)
      Dependency.find_by(id: id)
    end

    # {
    #   dependency(id: 1){
    #       id
    #       name
    #       cmd
    #       description
    #       framework {
    #           id
    #           name
    #       }
    #   }
    # }

    field :all_dependencies, [Types::DependencyType], null: false
    def all_dependencies
      Dependency.all.order("id DESC")
    end

    #################################################

    # /query_frameworks

    # {
    #   countFramework
    # }

    field :count_framework, Int, null: false
    def count_framework
      Framework.all.count
    end

    # {
    #   frameworks(page: 2, perPage: 2){
    #       id
    #       name
    #       cmd
    #       programmingLanguage {
    #           id
    #           name
    #       }
    #   }
    # }

    field :frameworks, [Types::FrameworkType], null: false do
      argument :page, Int, required: true
      argument :per_page, Int, required: true
    end
    def frameworks(page:, per_page:)
      Framework.order("id ASC").limit(per_page).offset((page.to_i - 1) * per_page.to_i)
    end

    # {
    #   framework(id: 1){
    #       id
    #       name
    #       cmd
    #       programmingLanguage {
    #           id
    #           name
    #       }
    #   }
    # }

    field :framework, Types::FrameworkType, null: false do
      argument :id, ID, required: true
    end
    def framework(id:)
      Framework.find_by(id: id)
    end

    # {
    #   allFrameworks{
    #       id
    #       name
    #       cmd
    #       programmingLanguage {
    #           id
    #           name
    #       }
    #   }
    # }

    field :all_frameworks, [Types::FrameworkType], null: false
    def all_frameworks
      Framework.all.order("id DESC")
    end

    #################################################

    # /query_databases

    # {
    #   countDatabase
    # }

    field :count_database, Int, null: false
    def count_database
      Database.all.count
    end

    # {
    #   databases(page: 1, perPage: 2){
    #       id
    #       name
    #   }
    # }

    field :databases, [Types::DatabaseType], null: false do
      argument :page, Int, required: true
      argument :per_page, Int, required: true
    end
    def databases(page:, per_page:)
      Database.order("id ASC").limit(per_page).offset((page.to_i - 1) * per_page.to_i)
    end

    # {
    #   database(id: 1){
    #       id
    #       name
    #   }
    # }

    field :database, Types::DatabaseType, null: false do
      argument :id, ID, required: true
    end
    def database(id:)
      Database.find_by(id: id)
    end

    # {
    #   allDatabases{
    #       id
    #       name
    #   }
    # }

    field :all_databases, [Types::DatabaseType], null: false
    def all_databases
      Database.all.order("id DESC")
    end

    #################################################

    # /query_programming_languages

    # {
    #   countProgrammingLanguage
    # }

    field :count_programming_language, Int, null: false
    def count_programming_language
      ProgrammingLanguage.all.count
    end

    # {
    #   programmingLanguages(page: 2, perPage: 2){
    #       id
    #       name
    #   }
    # }

    field :programming_languages, [Types::ProgrammingLanguageType], null: false do
      argument :page, Int, required: true
      argument :per_page, Int, required: true
    end
    def programming_languages(page:, per_page:)
      ProgrammingLanguage.order("id ASC").limit(per_page).offset((page.to_i - 1) * per_page.to_i)
    end

    # {
    #   programmingLanguage(id: 1){
    #       id
    #       name
    #   }
    # }

    field :programming_language, Types::ProgrammingLanguageType, null: false do
      argument :id, ID, required: true
    end
    def programming_language(id:)
      ProgrammingLanguage.find_by(id: id)
    end

    # {
    #   allProgrammingLanguages{
    #       id
    #       name
    #   }
    # }

    field :all_programming_languages, [Types::ProgrammingLanguageType], null: false
    def all_programming_languages
      ProgrammingLanguage.all.order("id DESC")
    end
  end
end
