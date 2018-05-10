class Payment < ApplicationRecord
  belongs_to :purchase

  enum payment_status: [:pending, :approved, :declined]
  enum payment_method: [:undefined, :credit_card, :debit_card, :cash]
end
