class CreateParkingTypes < ActiveRecord::Migration
  def change
    create_table :parking_types do |t|
      t.string :description
      t.boolean :active

      t.timestamps null: false
    end
  end
end
