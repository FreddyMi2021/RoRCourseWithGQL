class CreateEnvironmentXDependencies < ActiveRecord::Migration[6.0]
  def change
    create_table :environment_x_dependencies do |t|
      t.belongs_to :environment, null: false, foreign_key: true
      t.belongs_to :dependency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
