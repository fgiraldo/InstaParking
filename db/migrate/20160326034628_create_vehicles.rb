class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :descripcion
      t.references :brand, index: true, foreign_key: true
      t.references :vehicle_type, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :active

      t.timestamps null: false
    end
  end
end
