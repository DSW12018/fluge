class CreatePassengers < ActiveRecord::Migration[5.1]
  def change
    create_table :passengers, id: :uuid do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :birth_date
      t.integer :document_type
      t.string :document_number
      t.integer :gender

      t.timestamps
    end
  end
end
