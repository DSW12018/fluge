Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root of the schema. See available queries."

  field :flights, !types[Types::FlightType], function: Resolvers::SearchFlights.new

  field :allAirlines, !types[Types::AirlineType] do
    description 'All airlines'
    resolve ->(object, args, ctx) {
      Airline.all
    }
  end

  field :allAircrafts, !types[Types::AircraftType] do
    description 'All aircrafts'
    resolve ->(object, args, ctx) { Aircraft.all }
  end
end
