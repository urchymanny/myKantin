class AddRestaurantIdToCuisines < ActiveRecord::Migration[5.0]
  def change
    add_column :cuisines, :restaurant_id, :integer
  end
end
