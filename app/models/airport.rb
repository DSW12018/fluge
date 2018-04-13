class Airport < ApplicationRecord
  validates :iata, presence: true
  validates :name, presence: true
  validates :boarding_fee, presence: true
end
