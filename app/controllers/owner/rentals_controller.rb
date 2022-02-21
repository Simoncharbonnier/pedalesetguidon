class Owner::RentalsController < ApplicationController
  before_action :set_rental, only: [:accept, :decline]

  def index
    @rentals = Rental.all
  end

  def accept
    @rental.status = "accepted"
  end

  def decline
    @rental.status = "declined"
  end

  private

  def set_rental
    @rental = Rental.find(params[:id])
  end
end
