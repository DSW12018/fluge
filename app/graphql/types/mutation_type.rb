Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createCustomer, function: Resolvers::CreateCustomer.new
  field :createPassenger, function: Resolvers::CreatePassenger.new
end
