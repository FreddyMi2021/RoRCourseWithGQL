# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_30_073725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_admins_on_uid_and_provider", unique: true
  end

  create_table "content_management_systems", force: :cascade do |t|
    t.string "name"
    t.string "cmd"
    t.bigint "programming_language_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["programming_language_id"], name: "index_content_management_systems_on_programming_language_id"
  end

  create_table "databases", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dependencies", force: :cascade do |t|
    t.string "name"
    t.string "cmd"
    t.string "description"
    t.bigint "framework_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "content_management_system_id"
    t.index ["content_management_system_id"], name: "index_dependencies_on_content_management_system_id"
    t.index ["framework_id"], name: "index_dependencies_on_framework_id"
  end

  create_table "environment_x_dependencies", force: :cascade do |t|
    t.bigint "environment_id", null: false
    t.bigint "dependency_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dependency_id"], name: "index_environment_x_dependencies_on_dependency_id"
    t.index ["environment_id"], name: "index_environment_x_dependencies_on_environment_id"
  end

  create_table "environments", force: :cascade do |t|
    t.string "name"
    t.bigint "programming_language_id", null: false
    t.bigint "framework_id"
    t.bigint "database_id", null: false
    t.bigint "product_owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "content_management_system_id"
    t.index ["content_management_system_id"], name: "index_environments_on_content_management_system_id"
    t.index ["database_id"], name: "index_environments_on_database_id"
    t.index ["framework_id"], name: "index_environments_on_framework_id"
    t.index ["product_owner_id"], name: "index_environments_on_product_owner_id"
    t.index ["programming_language_id"], name: "index_environments_on_programming_language_id"
  end

  create_table "frameworks", force: :cascade do |t|
    t.string "name"
    t.string "cmd"
    t.bigint "programming_language_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["programming_language_id"], name: "index_frameworks_on_programming_language_id"
  end

  create_table "product_owners", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_product_owners_on_confirmation_token", unique: true
    t.index ["email"], name: "index_product_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_product_owners_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_product_owners_on_uid_and_provider", unique: true
  end

  create_table "programming_languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "deadline"
    t.bigint "product_owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_owner_id"], name: "index_projects_on_product_owner_id"
  end

  create_table "sprints", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "deadline"
    t.integer "team_number"
    t.string "status"
    t.bigint "project_id", null: false
    t.bigint "environment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["environment_id"], name: "index_sprints_on_environment_id"
    t.index ["project_id"], name: "index_sprints_on_project_id"
  end

  add_foreign_key "content_management_systems", "programming_languages"
  add_foreign_key "dependencies", "content_management_systems"
  add_foreign_key "dependencies", "frameworks"
  add_foreign_key "environment_x_dependencies", "dependencies"
  add_foreign_key "environment_x_dependencies", "environments"
  add_foreign_key "environments", "content_management_systems"
  add_foreign_key "environments", "databases"
  add_foreign_key "environments", "frameworks"
  add_foreign_key "environments", "product_owners"
  add_foreign_key "environments", "programming_languages"
  add_foreign_key "frameworks", "programming_languages"
  add_foreign_key "projects", "product_owners"
  add_foreign_key "sprints", "environments"
  add_foreign_key "sprints", "projects"
end
