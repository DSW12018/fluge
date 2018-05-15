Types::AirportType = GraphQL::ObjectType.define do

  name "Airport"
  description "An airport with iata code, city and boarding_fee."

  field :id, !types.ID
  field :iata, types.String, "The iata code of this airport."
  field :name, types.String, "The name of this airport."
  field :city, types.String, "The city of this airport."
  field :boarding_fee, types.Int, "The boarding_fee of this airport."

end
