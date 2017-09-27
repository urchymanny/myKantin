class AddRestaurantIdToDishes < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :restaurant_id, :integer
    add_column :dishes, :cuisine_id, :integer
  end
end
