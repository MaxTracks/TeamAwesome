class PickupLocationsController < ApplicationController
  before_action :set_pickup_location, only: [:show, :edit, :update, :destroy]

  # GET /pickup_locations
  # GET /pickup_locations.json
  def index
    @pickup_locations = PickupLocation.all
  end

  # GET /pickup_locations/1
  # GET /pickup_locations/1.json
  def show
  end

  # GET /pickup_locations/new
  def new
    @pickup_location = PickupLocation.new
  end

  # GET /pickup_locations/1/edit
  def edit
  end

  # POST /pickup_locations
  # POST /pickup_locations.json
  def create
    @pickup_location = PickupLocation.new(pickup_location_params)

    respond_to do |format|
      if @pickup_location.save
        format.html { redirect_to @pickup_location, notice: 'Pickup location was successfully created.' }
        format.json { render :show, status: :created, location: @pickup_location }
      else
        format.html { render :new }
        format.json { render json: @pickup_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pickup_locations/1
  # PATCH/PUT /pickup_locations/1.json
  def update
    respond_to do |format|
      if @pickup_location.update(pickup_location_params)
        format.html { redirect_to @pickup_location, notice: 'Pickup location was successfully updated.' }
        format.json { render :show, status: :ok, location: @pickup_location }
      else
        format.html { render :edit }
        format.json { render json: @pickup_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pickup_locations/1
  # DELETE /pickup_locations/1.json
  def destroy
    @pickup_location.destroy
    respond_to do |format|
      format.html { redirect_to pickup_locations_url, notice: 'Pickup location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pickup_location
      @pickup_location = PickupLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pickup_location_params
      params.require(:pickup_location).permit(:location, :latitude, :longitude, :details, :items)
    end
end
