class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :description
      t.boolean :active
      t.references :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
