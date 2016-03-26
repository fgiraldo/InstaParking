class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :description
      t.boolean :active
      t.references :region, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
