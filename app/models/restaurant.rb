class Restaurant < ApplicationRecord
	mount_uploader :image, RestaurantUploader
	has_many :cuisines, inverse_of: :restaurant
	has_many :dishes
	belongs_to :state
	belongs_to :lga
	accepts_nested_attributes_for :cuisines, :allow_destroy => true

	# Friendly ID
	extend FriendlyId
    friendly_id :name, use: :slugged

	#Geocoder
	geocoded_by :loc
	after_validation :geocode, if: ->(obj){ obj.lga_id.present? and obj.lga_id_changed? }

	# for geocoder
	def loc
		[lga.name, state.name, country].compact.join(', ')
	end
end
