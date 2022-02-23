class RentalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :create]
  def index
    @rentals = Rental.where(user_id: current_user)
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user_id = current_user.id
    @rental.bike_id = params[:bike_id]
    @rental.status = "pending"
    @rental.save

    redirect_to rentals_path
  end

  private

  def rental_params
    params.require(:rental).permit(:start_at, :end_at, :total_price)
  end
end
