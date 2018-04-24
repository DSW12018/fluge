class AddCustomerToCustomerAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :customer_addresses, :customer, foreign_key: true
  end
end
