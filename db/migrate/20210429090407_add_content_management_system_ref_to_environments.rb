class AddContentManagementSystemRefToEnvironments < ActiveRecord::Migration[6.0]
  def change
    add_reference :environments, :content_management_system, null: true, foreign_key: true
  end
end
