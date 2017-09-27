class Cuisine < ApplicationRecord
	belongs_to :restaurant, inverse_of: :cuisines
	has_many :dishes
end
