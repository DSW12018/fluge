class FlightBooking < ApplicationRecord
  belongs_to :flight
  belongs_to :purchase
  has_one :passenger
end

class FlightBookingBuilder
  def initialize (flight)
    @flight_booking = FlightBooking.new
    @flight_booking.purchase = purchase.new
    @flight_booking.flight = flight
    @flight_booking.passenger = nil
    @flight_booking.localizer = nil
    @flight_booking.departure_date = nil
  end

  def with_purchase(purchase)
    @flight_booking.purchase = purchase
  end

  def with_passenger(passenger)
    @flight_booking.passenger = passenger
  end

  def with_localizer(localizer)
    @flight_booking.localizer = localizer
  end

  def with_departure_date(date_string)
    @flight_booking.departure_date = Date.new(date_string)
  end

  def flight_booking
    return @flight_booking
  end
end
