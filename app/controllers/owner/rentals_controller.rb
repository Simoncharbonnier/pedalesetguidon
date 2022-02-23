class Owner::RentalsController < ApplicationController
  before_action :set_owner_rental, only: %i[accept decline]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @bikes = Bike.where(user_id: current_user)
    @rentals = []
    @bikes.each do |bike|
      @rentals << bike.rentals
    end
    @owner_rentals = @rentals.select { |rental| rental.first.is_a? Rental }
    @owner_rentals.map! { |rental| rental.first }
  end

  def accept
    @owner_rental.status = "validated"
    
  end

  def refuse
    @owner_rental.status = "refused"
  end

  private

  def set_owner_rental
    @owner_rental = Rental.find(params[:id])
  end
end
