class HomeController < ApplicationController
	layout "mykantin"
  def index
  	@restaurant_search = RestaurantSearch.new
  end
end
