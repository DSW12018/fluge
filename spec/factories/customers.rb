FactoryBot.define do
  factory :customer do
    first_name 'João'
    last_name 'da Silva'
    email 'joaodasilva@example.com'
    phone '61999011234'
    cpf '21112100130'
    birth_date '1990-04-08'
    password 123456
  end
end
