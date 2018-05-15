class AddFlightBookingToPassengers < ActiveRecord::Migration[5.1]
  def change
    add_reference :passengers, :flight_booking, foreign_key: true
  end
end
