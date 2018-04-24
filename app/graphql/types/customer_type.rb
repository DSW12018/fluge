Types::CustomerType = GraphQL::ObjectType.define do

  name "Customer"
  description "A customer with first name, last name, email, phone, cpf and birth date."

  field :id, !types.ID
  field :first_name, types.String, "The first name of this customer."
  field :last_name, types.String, "The last name of this customer."
  field :email, types.String, "The email of this customer."
  field :phone, types.String, "The phone of this customer."
  field :cpf, types.String, "The cpf of this customer."
  field :birth_date, types.String, "The birth date of this customer."

end
