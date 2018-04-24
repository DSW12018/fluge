class FederatedUnit < ApplicationRecord
  validates :acronym, presence: true
  validates :name, presence: true
end
