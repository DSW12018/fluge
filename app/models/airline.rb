class Airline < ApplicationRecord

  has_many :flights

  validates :iata, presence: true, length: {maximum: 4}
  validates :name, presence: true
end
