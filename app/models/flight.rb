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
end
