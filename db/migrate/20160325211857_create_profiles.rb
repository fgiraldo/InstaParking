class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :identity_number
      t.datetime :born_at
      t.string :phone_number
      t.string :landline_number
      t.string :contact
      t.string :company_name
      t.string :address

      t.timestamps null: false
    end
  end
end
