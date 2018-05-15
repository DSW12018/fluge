FactoryBot.define do
  factory :customer_address do
    zip_code "4321"
    address "MyString"
    number "1234"
    complement "MyString"
    neighborhood "MyString"
    city "MyString"
    federated_unit
    customer
  end
end
