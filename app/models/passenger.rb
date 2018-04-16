class Passenger < ApplicationRecord
  enum gender: [:female, :male]
  enum document_type: [:cpf, :rg, :passaport]

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, timeliness: { on_or_before: lambda { Date.current }, type: :date }, presence:true
  validates :document_number, presence: true
end
