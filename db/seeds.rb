# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker' 


admin1 = Admin.create(name: Faker::ProgrammingLanguage.creator, email: Faker::Internet.email, password: "password")
admin2 = Admin.create(name: Faker::ProgrammingLanguage.creator, email: Faker::Internet.email, password: "password")
admin3 = Admin.create(name: Faker::ProgrammingLanguage.creator, email: Faker::Internet.email, password: "password")
puts "Admin created"



PO1 = ProductOwner.create(name: Faker::ProgrammingLanguage.creator, email: Faker::Internet.email, password: "password")
PO2 = ProductOwner.create(name: Faker::ProgrammingLanguage.creator, email: Faker::Internet.email, password: "password")
PO3 = ProductOwner.create(name: Faker::ProgrammingLanguage.creator, email: Faker::Internet.email, password: "password")
puts "PO created "


PLang1 = ProgrammingLanguage.create(name: Faker::ProgrammingLanguage.name)
PLang2 = ProgrammingLanguage.create(name: Faker::ProgrammingLanguage.name)
PLang3 = ProgrammingLanguage.create(name: Faker::ProgrammingLanguage.name)
puts "Prog lang  created "


bdd1 = Database.create(name: Faker::Science.element )
bdd2 = Database.create(name: Faker::Science.element )
bdd3 = Database.create(name: Faker::Science.element )
puts "BDD created "


fram1 = Framework.create(name: Faker::Esport.game, cmd: Faker::File.mime_type, programming_language_id: rand(1..3) )
fram2 = Framework.create(name: Faker::Esport.game, cmd: Faker::File.mime_type, programming_language_id: rand(1..3) )
fram3 = Framework.create(name: Faker::Esport.game, cmd: Faker::File.mime_type, programming_language_id: rand(1..3) )
fram4 = Framework.create(name: Faker::Esport.game, cmd: Faker::File.mime_type, programming_language_id: rand(1..3) )
fram5 = Framework.create(name: Faker::Esport.game, cmd: Faker::File.mime_type, programming_language_id: rand(1..3) )
puts "Fram created "

cms1 = ContentManagementSystem.create(name: Faker::Games::Pokemon.name, cmd: Faker::File.mime_type, programming_language_id: rand(1..3) )
cms2 = ContentManagementSystem.create(name: Faker::Games::Pokemon.name, cmd: Faker::File.mime_type, programming_language_id: rand(1..3) )
cms3 = ContentManagementSystem.create(name: Faker::Games::Pokemon.name, cmd: Faker::File.mime_type, programming_language_id: rand(1..3) )
cms4 = ContentManagementSystem.create(name: Faker::Games::Pokemon.name, cmd: Faker::File.mime_type, programming_language_id: rand(1..3) )
puts "cms created"


dep1 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, framework_id: rand(1..5) )
dep2 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, framework_id: rand(1..5) )
dep3 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, framework_id: rand(1..5) )
dep4 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, framework_id: rand(1..5) )
dep5 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, framework_id: rand(1..5) )
dep6 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, framework_id: rand(1..5) )
dep7 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, framework_id: rand(1..5) )
dep8 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, framework_id: rand(1..5) )
dep9 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, framework_id: rand(1..5) )
dep10 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, content_management_system_id: rand(1..4) )
dep11 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, content_management_system_id: rand(1..4) )
dep12 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, content_management_system_id: rand(1..4) )
dep13 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, content_management_system_id: rand(1..4) )
dep14 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, content_management_system_id: rand(1..4) )
dep15 = Dependency.create(name: Faker::Food.dish, cmd: Faker::File.mime_type, description: Faker::Food.description, content_management_system_id: rand(1..4) )
puts "Dep created "


env1 = Environment.create(name: Faker::Hacker.adjective, programming_language_id: rand(1..3), database_id: rand(1..3), framework_id: rand(1..5), product_owner_id: rand(1..3) )
env2 = Environment.create(name: Faker::Hacker.adjective, programming_language_id: rand(1..3), database_id: rand(1..3), framework_id: rand(1..5), product_owner_id: rand(1..3) )
env3 = Environment.create(name: Faker::Hacker.adjective, programming_language_id: rand(1..3), database_id: rand(1..3), framework_id: rand(1..5), product_owner_id: rand(1..3) )
env4 = Environment.create(name: Faker::Hacker.adjective, programming_language_id: rand(1..3), database_id: rand(1..3), content_management_system_id: rand(1..4), product_owner_id: rand(1..3) )
env5 = Environment.create(name: Faker::Hacker.adjective, programming_language_id: rand(1..3), database_id: rand(1..3), content_management_system_id: rand(1..4), product_owner_id: rand(1..3) )
puts "Env created "


env_x_dep1 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep2 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep3 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep4 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep5 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep6 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep7 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep8 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep9 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep10 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep11 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep12 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep13 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep14 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
env_x_dep15 = EnvironmentXDependency.create(environment_id: rand(1..5), dependency_id: rand(1..15))
puts "EnvXDep created "

proj1 = Project.create(name: Faker::JapaneseMedia::OnePiece.akuma_no_mi, description: Faker::JapaneseMedia::OnePiece.quote, deadline: "rahampitso", product_owner_id: rand(1..3))
proj2 = Project.create(name: Faker::JapaneseMedia::OnePiece.akuma_no_mi, description: Faker::JapaneseMedia::OnePiece.quote, deadline: "rahampitso", product_owner_id: rand(1..3))
proj3 = Project.create(name: Faker::JapaneseMedia::OnePiece.akuma_no_mi, description: Faker::JapaneseMedia::OnePiece.quote, deadline: "rahampitso", product_owner_id: rand(1..3))
puts "proj created"

sprint1 = Sprint.create(name: Faker::Book.title, description: Faker::Marketing.buzzwords, deadline: "rahampitso", team_number: 4, status: "full", project_id: rand(1..4), environment_id: 1)
sprint2 = Sprint.create(name: Faker::Book.title, description: Faker::Marketing.buzzwords, deadline: "rahampitso", team_number: 4, status: "full", project_id: rand(1..4), environment_id: 2)
sprint3 = Sprint.create(name: Faker::Book.title, description: Faker::Marketing.buzzwords, deadline: "rahampitso", team_number: 4, status: "full", project_id: rand(1..4), environment_id: 3)
sprint4 = Sprint.create(name: Faker::Book.title, description: Faker::Marketing.buzzwords, deadline: "rahampitso", team_number: 4, status: "full", project_id: rand(1..4), environment_id: 4)
sprint5 = Sprint.create(name: Faker::Book.title, description: Faker::Marketing.buzzwords, deadline: "rahampitso", team_number: 4, status: "full", project_id: rand(1..4), environment_id: 5)

puts "sprint created"
