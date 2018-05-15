class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases, id: :uuid do |t|
      t.integer :purchase_status
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
