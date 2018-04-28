Types::AirlineType = GraphQL::ObjectType.define do

  name "Airline"
  description "An airline with iata and name."

  field :id, !types.ID
  field :iata, types.String, "The iata code of this airline."
  field :name, types.String, "The name of this airline."

end
