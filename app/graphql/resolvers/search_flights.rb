class Resolvers::SearchFlights < GraphQL::Function

  argument :origin, !types.String
  argument :destination, !types.String

  type Types::FlightType

  def call(_obj, args, _ctx)
    Flight.search(
      origin: args[:origin],
      destination: args[:destination]
    )
  end

end
