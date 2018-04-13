Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createCustomer, function: Resolvers::CreateCustomer.new
end
