class CustomerAddress < ApplicationRecord
  validates :customer, class_name: "Customer"
  validates :zip_code, presence: true
  validates :address, presence: true
  validates :number, presence: true
  validates :complement, presence: true
  validates :neighborhood: presence: true
  validates :city: presence: true
  validates :federated_unit
end
