class Owner::RentalsController < ApplicationController
  before_action :set_rental, only: [:accept, :decline]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @rentals = Rental.all
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
