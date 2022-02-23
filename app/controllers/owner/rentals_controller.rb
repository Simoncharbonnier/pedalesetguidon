class Owner::RentalsController < ApplicationController
  before_action :set_rental, only: [:accept, :decline]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    # @rentals = Rental.where(user_id: current_user)
    @owner_bikes = Bike.all.where(user_id: current_user)
    @owner_rentals_canceled = []
    @owner_rentals_accepted = []
    @owner_rentals_pending = []
    @owner_bikes.each do |bike|
      bike.rentals.each do |bike_rental|
        @owner_rentals_canceled << bike_rental if bike_rental.status == "Canceled"
        @owner_rentals_accepted << bike_rental if bike_rental.status == "Accepted"
        @owner_rentals_pending << bike_rental if bike_rental.status == "Pending"
      end
    end
  end

  def accept
    @rental.status = "accepted"
  end

  def refuse
    @rental.status = "refused"
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end
end
