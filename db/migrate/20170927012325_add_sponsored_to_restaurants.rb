class AddSponsoredToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :sponsored, :boolean, default: false
  end
end
