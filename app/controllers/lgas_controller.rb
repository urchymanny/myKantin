class LgasController < ApplicationController
  before_action :set_lga, only: [:show, :edit, :update, :destroy]

  # GET /lgas
  # GET /lgas.json
  def index
    @lgas = Lga.all
  end

  # GET /lgas/1
  # GET /lgas/1.json
  def show
  end

  # GET /lgas/new
  def new
    @lga = Lga.new
  end

  # GET /lgas/1/edit
  def edit
  end

  def import
    Lga.import(params[:file])
    redirect_to lgas_path, notice: "Lgas imported."
  end

  # POST /lgas
  # POST /lgas.json
  def create
    @lga = Lga.new(lga_params)

    respond_to do |format|
      if @lga.save
        format.html { redirect_to @lga, notice: 'Lga was successfully created.' }
        format.json { render :show, status: :created, location: @lga }
      else
        format.html { render :new }
        format.json { render json: @lga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lgas/1
  # PATCH/PUT /lgas/1.json
  def update
    respond_to do |format|
      if @lga.update(lga_params)
        format.html { redirect_to @lga, notice: 'Lga was successfully updated.' }
        format.json { render :show, status: :ok, location: @lga }
      else
        format.html { render :edit }
        format.json { render json: @lga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lgas/1
  # DELETE /lgas/1.json
  def destroy
    @lga.destroy
    respond_to do |format|
      format.html { redirect_to lgas_url, notice: 'Lga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lga
      @lga = Lga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lga_params
      params.require(:lga).permit(:name, :state_id)
    end
end
