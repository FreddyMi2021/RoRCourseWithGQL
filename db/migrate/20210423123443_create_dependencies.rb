class CreateDependencies < ActiveRecord::Migration[6.0]
  def change
    create_table :dependencies do |t|
      t.string :name
      t.string :cmd
      t.string :description
      t.belongs_to :framework, null: true, foreign_key: true

      t.timestamps
    end
  end
end
