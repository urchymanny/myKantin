class RemoveLgaFromRestaurants < ActiveRecord::Migration[5.0]
  def change
    remove_column :restaurants, :lga, :string
    remove_column :restaurants, :state, :string
  end
end
