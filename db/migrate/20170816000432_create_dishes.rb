class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.string :title
      t.string :description
      t.float :price
      t.string :image

      t.timestamps
    end
  end
end
