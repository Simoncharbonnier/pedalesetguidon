class Bike < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_one_attached :photo
  validates :daily_price, numericality: { greater_than: 0 }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
