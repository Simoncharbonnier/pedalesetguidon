class RentalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :create]
  def index
    @rentals = Rental.all
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.status = "pending"
    @rental.save

    redirect_to rentals_path
  end

  private

  def rental_params
    params.require(:rental).permit(:start_at, :end_at, :total_price, :status, :user_id, :bike_id)
  end
end
