class CreateCustomerAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_addresses, id: :uuid do |t|
      t.string :zip_code
      t.string :address
      t.string :number
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.references :federated_unit, foreign_key: true

      t.timestamps
    end
  end
end
