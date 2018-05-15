Types::FlightType = GraphQL::ObjectType.define do
  name "Flight"
  description "A flight scheduele with airline, origin, destination and other fields."

  field :id, !types.ID
  field :flight_number, !types.Int

  field :airline do
    type Types::AirlineType
    description "Airline that operates this flight."
    resolve -> (flight, args, ctx) {
      RecordLoader.for(Airline).load(flight.airline_id)
    }
  end

  field :departure do
    type types.String
    description "Departure time."
    resolve -> (obj, args, ctx) {
      TimeOfDayAttr.l(obj.departure)
    }
  end

  field :arrival do
    type types.String
    description "Departure time."
    resolve -> (obj, args, ctx) {
      TimeOfDayAttr.l(obj.arrival)
    }
  end

  field :duration do
    type types.String
    description "Duration time of the flight."
    resolve -> (obj, args, ctx) {
      TimeOfDayAttr.l(obj.duration)
    }
  end

  field :origin do
    type Types::AirportType
    description "Origin of the flight."
    resolve -> (flight, args, ctx) {
      RecordLoader.for(Airport).load(flight.origin_id)
    }
  end

  field :destination do
    type Types::AirportType
    description "Destination of the flight."
    resolve -> (flight, args, ctx) {
      RecordLoader.for(Airport).load(flight.destination_id)
    }
  end

end
