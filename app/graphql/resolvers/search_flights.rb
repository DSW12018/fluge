class Resolvers::SearchFlights < GraphQL::Function

  argument :origin_id, !types.String
  argument :destination_id, !types.String

  type Types::FlightType

  def call(_obj, args, _ctx)
    Flight.where(
      origin_id: args[:origin_id],
      destination_id: args[:destination_id]
    )
  end

end
