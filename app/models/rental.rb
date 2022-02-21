class Rental < ApplicationRecord
  belongs_to :users
  belongs_to :bikes
end
