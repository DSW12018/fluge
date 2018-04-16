class Airport < ApplicationRecord
  has_many :flights
  validates :iata, presence: true, length: {maximum: 3}
  validates :name, presence: true
  validates :boarding_fee, presence: true
end
