class CreateAdditionals < ActiveRecord::Migration
  def change
    create_table :additionals do |t|
      t.references :supply, index: true, foreign_key: true
      t.string :description
      t.boolean :active

      t.timestamps null: false
    end
  end
end
