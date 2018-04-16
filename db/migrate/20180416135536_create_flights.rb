class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights, id: :uuid do |t|
      t.string :flight_number
      t.integer :departure
      t.integer :arrival
      t.integer :duration
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
