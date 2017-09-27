class Dish < ApplicationRecord
	mount_uploader :image, DishUploader
	belongs_to :cuisine
	belongs_to :restaurant
end
