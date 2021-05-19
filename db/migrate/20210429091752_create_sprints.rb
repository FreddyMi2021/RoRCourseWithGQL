class CreateSprints < ActiveRecord::Migration[6.0]
  def change
    create_table :sprints do |t|
      t.string :name
      t.string :description
      t.string :deadline
      t.integer :team_number
      t.string :status
      t.belongs_to :project, null: false, foreign_key: true
      t.belongs_to :environment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
