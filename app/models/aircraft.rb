class Aircraft < ApplicationRecord
  validates :iata, presence: true, length: {maximum: 3}
  validates :name, presence: true
  validates :manufacturer, presence: true
end
