class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :lga
      t.string :state
      t.string :country
      t.string :image

      t.timestamps
    end
  end
end
