class Bike < ApplicationRecord
  belongs_to :users
  has_many :rentals
end
