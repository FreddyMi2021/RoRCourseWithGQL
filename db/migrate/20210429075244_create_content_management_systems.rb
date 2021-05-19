class CreateContentManagementSystems < ActiveRecord::Migration[6.0]
  def change
    create_table :content_management_systems do |t|
      t.string :name
      t.string :cmd
      t.belongs_to :programming_language, null: false, foreign_key: true
      t.belongs_to :database, null: false, foreign_key: true

      t.timestamps
    end
  end
end
