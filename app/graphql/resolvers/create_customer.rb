class Resolvers::CreateCustomer < GraphQL::Function

  argument :first_name, !types.String
  argument :last_name, !types.String
  argument :email, !types.String
  argument :phone, !types.String
  argument :cpf, !types.String
  argument :birth_date, !types.String
  argument :password, !types.String

  type Types::CustomerType

  def call(_obj, args, _ctx)
    Customer.create!(
      first_name: args[:first_name],
      last_name: args[:last_name],
      email: args[:email],
      phone: args[:phone],
      cpf: args[:cpf],
      birth_date: args[:birth_date],
      password: args[:password]
    )
  end

end
