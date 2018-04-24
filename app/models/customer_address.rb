class CustomerAddress < ApplicationRecord
  belongs_to :federated_unit

  validates :zip_code, presence: true
  validates :zip_code, format: { with: /\A[0-9\s]+\z/i, message: "can only contain numbers." }
  validates :address, presence: true
  validates :number, presence: true
  validates :number, format: { with: /\A[0-9\s]+\z/i, message: "can only contain numbers." }
  validates :complement, presence: true
  validates :neighborhood, presence: true
  validates :city, presence: true
  validates :federated_unit, presence: true
end
