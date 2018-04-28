Types::AircraftType = GraphQL::ObjectType.define do

  name "Aircraft"
  description "An aircraft with iata code, name and manufacturer."

  field :id, !types.ID
  field :iata, types.String, "The iata code of this aircraft."
  field :name, types.String, "The name of this aircraft."
  field :manufacturer, types.String, "The manufacturer of this aircraft."

end
