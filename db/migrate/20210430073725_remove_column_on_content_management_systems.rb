class RemoveColumnOnContentManagementSystems < ActiveRecord::Migration[6.0]
  def change
    remove_column :content_management_systems, :database_id
  end
end
