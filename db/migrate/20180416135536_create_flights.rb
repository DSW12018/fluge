class CreateFlights < ActiveRecord::Migration[5.1]
  def change

    create_table :flights, id: :uuid do |t|
      t.string :flight_number
      t.integer :departure
      t.integer :arrival
      t.integer :duration
      t.datetime :created_at
      t.datetime :updated_at
      t.references :airline, foreign_key: true
      t.references :aircraft, foreign_key: true

      t.timestamps
    end

    add_reference :flights, :origin, type: :uuid, references: :airports, index: true, after: :id
    add_foreign_key :flights, :airports, column: :origin_id
    add_reference :flights, :destination, type: :uuid, references: :airports, index: true, after: :origin_id
    add_foreign_key :flights, :airports, column: :destination_id

  end
end
