class FederatedUnit < ApplicationRecord
  has_many :customer_address

  validates :acronym, presence: true
  validates :name, presence: true
end
