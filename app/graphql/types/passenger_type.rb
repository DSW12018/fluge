Types::PassengerType = GraphQL::ObjectType.define do

  name "Passenger"
  description "A customer with first name, last name, email, phone, cpf and birth date."

  field :id, !types.ID
  field :first_name, types.String, "The first name of this passenger."
  field :middke_name, types.String, "The first name of this passenger."
  field :last_name, types.String, "The last name of this passenger."
  field :birth_date, types.String, "The birth date of this passenger."
  field :document_type, types.Int, "The document type of this passenger."
  field :document_number, types.Int, "The document number of this passenger."
  field :gender, Types::GenderEnumType, "The gender of this passenger."

end
