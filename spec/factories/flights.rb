FactoryBot.define do
  factory :flight do
    flight_number "MyString"
    airline
    aircraft
    departure 1
    arrival 1
    duration 1
    created_at "2018-04-16 13:55:36"
    updated_at "2018-04-16 13:55:36"
    association :origin, factory: :airport
    association :destination, factory: :airport
  end
end
