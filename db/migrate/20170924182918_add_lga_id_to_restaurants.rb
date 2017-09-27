class AddLgaIdToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :lga_id, :integer
    add_column :restaurants, :state_id, :integer
  end
end
