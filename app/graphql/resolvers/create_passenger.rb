class Resolvers::CreatePassenger < GraphQL::Function

  argument :first_name, !types.String
  argument :middle_name, !types.String
  argument :last_name, !types.String
  argument :birth_date, !types.String
  argument :document_type, !types.Int
  argument :document_number, !types.String
  argument :gender, !Types::GenderEnumType

  type Types::PassengerType

  def call(_obj, args, _ctx)
    Customer.create!(
      first_name: args[:first_name],
      middle_name: args[:middle_name],
      last_name: args[:last_name],
      birth_date: args[:birth_date],
      document_type: args[:document_type],
      document_number: args[:document_number],
      gender: args[:gender]
    )
  end

end
