class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.integer :number_space
      t.float :hourly_rate
      t.float :daily_rate
      t.float :weekly_rate
      t.float :monthly_rate
      t.references :region, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true
      t.references :zone, index: true, foreign_key: true
      t.string :address
      t.boolean :active

      t.timestamps null: false
    end
  end
end
