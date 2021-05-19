class AddContentManagementSystemRefToDependencies < ActiveRecord::Migration[6.0]
  def change
    add_reference :dependencies, :content_management_system, null: true, foreign_key: true
  end
end
