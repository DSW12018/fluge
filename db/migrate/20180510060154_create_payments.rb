class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments, id: :uuid do |t|
      t.integer :payment_method
      t.integer :payment_status
      t.integer :amount
      t.references :purchase, foreign_key: true

      t.timestamps
    end
  end
end
