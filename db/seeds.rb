# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airlines = [
  ['O6', 'Avianca Brasil', 'ONE'],
  ['AD', 'Azul', 'AZU'],
  ['G3', 'GOL', 'GLO'],
  ['JJ', 'LATAM', 'TAM'],
  ['2Z', 'Passaredo', 'PTB']
]

airlines.each do |airline|
  Airline.where(
    iata: airline[0],
    name: airline[1]
  ).first_or_create
end

aircrafts = [
  ['318', 'Airbus A318', 'Airbus Industrie', 'A318/M'],
  ['319', 'Airbus A319', 'Airbus Industrie', 'A319/M'],
  ['320', 'Airbus A320', 'Airbus Industrie', 'A320/M'],
  ['321', 'Airbus A321', 'Airbus Industrie', 'A321/M'],
  ['332', 'Airbus A330-200', 'Airbus Industrie', 'A332/H'],
  ['737', 'Boeing 737-700', 'Boeing', 'B737/M'],
  ['738', 'Boeing 737-800', 'Boeing', 'B738/M'],
  ['763', 'Boeing 767-300', 'Boeing', 'B763/H'],
  ['190', 'Embraer ERJ-190', 'Embraer', 'E190/M'],
  ['ATR', 'ATR 72-600', 'Aerospatiale', 'AT72/M'],
]

aircrafts.each do |aircraft|
  Aircraft.where(
    iata: aircraft[0],
    name: aircraft[1],
    manufacturer: aircraft[2]
  ).first_or_create
end

def search_array(array, key, value)
  array
    .map{ |element| element.to_a }
    .select{ |element| element[key] == value }
    .first
end

require 'csv'

airports_path = Rails.root.join('data', 'airports.csv')
airports_file = File.read(airports_path)
airports = CSV.parse(airports_file)
airports.each do |airport_row|
  airport = airport_row.to_a
  Airport.where(
    iata: airport[4],
    name: airport[2]
  ).first_or_create do |a|
    a.boarding_fee = 50
  end
end

flights_path = Rails.root.join('data', 'flights.csv')
flights_file = File.read(flights_path)
flights = CSV.parse(flights_file, headers: true)
flights.each do |flight_row|
  flight = flight_row.to_hash
  puts flight

  airline = search_array(airlines, 2, flight["airline"])
  airline = Airline.find_by(iata: airline[0])

  origin = search_array(airports, 3, flight["origin"])
  next unless origin.present?

  origin = Airport.find_by(iata: origin[4])

  destination = search_array(airports, 3, flight["destination"])
  next unless destination.present?

  destination = Airport.find_by(iata: destination[4])

  aircraft = search_array(aircrafts, 3, flight["aircraft"])
  aircraft = Aircraft.find_by(iata: aircraft[0])


  Flight.where(
    flight_number: flight["flight_number"],
    airline_id: airline.id,
    origin_id: origin.id,
    destination_id: destination.id,
    aircraft_id: aircraft.id,
    departure: flight["departure_time"],
    arrival: flight["arrival_time"],
    duration: flight["duration"]
  ).first_or_create
end
