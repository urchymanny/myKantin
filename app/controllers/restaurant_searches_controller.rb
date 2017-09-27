class RestaurantSearchesController < ApplicationController
 
  layout "mykantin"
  # GET /restaurant_searches/1
  # GET /restaurant_searches/1.json
  def show
    @search = RestaurantSearch.friendly.find(params[:id])
  end

  # GET /restaurant_searches/new
  def new
    @restaurant_search = RestaurantSearch.new
  end


  # POST /restaurant_searches
  # POST /restaurant_searches.json
  def create
    @restaurant_search = RestaurantSearch.new(restaurant_search_params)

    respond_to do |format|
      if @restaurant_search.save
        format.html { redirect_to @restaurant_search, notice: 'Restaurant search was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_search }
      else
        format.html { render :new }
        format.json { render json: @restaurant_search.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_search_params
      params.require(:restaurant_search).permit(:keywords)
    end
end
