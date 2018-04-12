class Passenger < ApplicationRecord
  enum gender: [:female, :male]
  enum document_type: [:cpf, :rg, :passaport]
end
