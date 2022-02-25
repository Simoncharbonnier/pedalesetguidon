class BikesController < ApplicationController
  before_action :set_bike, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "category ILIKE :query OR gender ILIKE :query OR location ILIKE :query OR bike_name ILIKE :query"

      @bikes = Bike.where(sql_query, query: "%#{params[:query]}%")
    else
      @bikes = Bike.all
    end

    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bike: bike }),
        image_url: helpers.asset_url("bicycle.png")
      }
    end
  end

  def show
    @rental = Rental.new
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user_id = current_user.id
    @bike.save

    if @bike.save
      redirect_to owner_rentals_path(@bike)
    else
      @bike = Bike.new

      render :new
    end
  end

  # def edit
  # end

  # def update
  #   @bike.update(bike_params)

  #   redirect_to bike_path(@bike)
  # end

  # def destroy
  #   @bike.destroy

  #   redirect_to bikes_path
  # end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:bike_name, :category, :daily_price, :gender, :location, :size, :photo)
  end
end
