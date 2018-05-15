class Flight < ApplicationRecord
    has_many :flight_booking
    validates :flight_number, presence: true
    validates :departure, numericality: { only_integer: true }, presence: true
    validates :arrival, numericality: { only_integer: true }, presence: true
    validates :duration, numericality: { only_integer: true }, presence: true
    belongs_to :airline
    belongs_to :origin, class_name: "Airport"
    belongs_to :destination, class_name: "Airport"
    belongs_to :aircraft

    time_of_day_attr :departure, :arrival, :duration

    class << self
      def search(params)
        origin = Airport.find_by(iata: params[:origin])
        destination = Airport.find_by(iata: params[:destination])
        Flight.where(origin_id: origin.id, destination_id: destination.id)
      end
    end
end
