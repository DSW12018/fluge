class Resolvers::SearchFlights < GraphQL::Function

  argument :origin, !types.String
  argument :destination, !types.String
  argument :departure, !types.String
  argument :return, !types.String
  argument :adults, !types.Int
  argument :youths, !types.Int
  argument :children, !types.Int
  argument :infants, !types.Int

  type Types::FlightType

  def call(_obj, args, _ctx)
    Flight.search(
      origin: args[:origin],
      destination: args[:destination]
    )
    #Search flights whose number of flight bookings is less than
    # the number of seats available on the aircraft
  end

end
