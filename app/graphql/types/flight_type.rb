Types::FlightType = GraphQL::ObjectType.define do
  name "Flight"
  description "A flight scheduele with airline, origin, destination and other fields."

  field :id, !types.ID
  field :airline do
    type Types::AirlineType
    description "Airline that operates this flight."
    resolve -> (flight, args, ctx) {
      RecordLoader.for(Types::Airline).load(flight.airline_id)
    }
  end

end
