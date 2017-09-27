class RestaurantSearch < ApplicationRecord

	# Friendly ID
	extend FriendlyId
    friendly_id :keywords, use: :slugged

	def search_restaurants
		restaurants = Restaurant.near(keywords, 50)
		return restaurants	
	end

end