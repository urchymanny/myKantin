class AddSlugToRestaurantSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurant_searches, :slug, :string
    add_index :restaurant_searches, :slug, unique: true
  end
end
