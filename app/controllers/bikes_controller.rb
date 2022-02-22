class BikesController < ApplicationController
  before_action :set_bike, only: :show

  def index
    @bikes = policy_scope(Bike)
  end

  def show
  end

  # def new
  #   @bike = Bike.new
  # end

  # def create
  #   authorize @bike
  #   @bike = Bike.new(bike_params)
  #   @bike.save

  #   redirect_to bike_path(@bike)
  # end

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

  # def bike_params
  #   params.require(:bike).permit(:bike_name, :category, :daily_price, :gender, :location, :size, :user_id)
  # end
end
