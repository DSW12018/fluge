class Passenger < ApplicationRecord
  enum gender: { female: 0, male: 1 }
  enum document_type: { cpf: 0, rg: 1, passaport: 2 }

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, timeliness: {
    on_or_before: lambda {
      Date.current
      },
      type: :date
    }, presence:true
  validates :document_number, presence: true
end
