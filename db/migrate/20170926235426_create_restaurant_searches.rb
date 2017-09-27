class CreateRestaurantSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurant_searches do |t|
      t.string :keywords

      t.timestamps
    end
  end
end
