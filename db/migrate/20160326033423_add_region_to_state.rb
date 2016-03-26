class AddRegionToState < ActiveRecord::Migration
  def change
    add_reference :states, :region, index: true, foreign_key: true
  end
end
