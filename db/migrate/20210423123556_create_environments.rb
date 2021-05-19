class CreateEnvironments < ActiveRecord::Migration[6.0]
  def change
    create_table :environments do |t|
      t.string :name
      t.belongs_to :programming_language, null: false, foreign_key: true
      t.belongs_to :framework, null: true, foreign_key: true
      t.belongs_to :database, null: false, foreign_key: true
      t.belongs_to :product_owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
