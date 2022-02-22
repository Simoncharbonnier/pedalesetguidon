class Bike < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_one_attached :photo
  validates :daily_price, numericality: { greater_than: 0 }
end
