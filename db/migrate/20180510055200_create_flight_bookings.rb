class CreateFlightBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :flight_bookings, id: :uuid do |t|
      t.string :localizer
      t.date :departure_date
      t.references :flight, foreign_key: true
      t.references :purchase, foreign_key: true

      t.timestamps
    end
  end
end
