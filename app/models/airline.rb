class Airline < ApplicationRecord
  validates :iata, presence: true, length: {maximum: 4}
  validates :name, presence: true
end
