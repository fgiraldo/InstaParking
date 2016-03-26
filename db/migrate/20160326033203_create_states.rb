class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :description
      t.boolean :active

      t.timestamps null: false
    end
  end
end
