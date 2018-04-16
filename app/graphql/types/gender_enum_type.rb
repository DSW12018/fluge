Types::GenderEnumType = GraphQL::EnumType.define do

  name "GenderEnum"

  value "FEMALE", "", value: :female
  value "MALE", "", value: :male
end
