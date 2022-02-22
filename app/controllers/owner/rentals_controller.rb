class Owner::RentalsController < ApplicationController
  before_action :set_rental, only: %i[accept decline]

  def index
    @rentals = Rental.where(user_id: current_user)
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
