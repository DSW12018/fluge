class Purchase < ApplicationRecord
  has_many :flight_booking
  has_one :payment
  belongs_to :customer

  enum purchase_status: [:shopping_cart, :pending, :emitted]
end
