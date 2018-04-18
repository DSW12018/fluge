class CreateAirports < ActiveRecord::Migration[5.1]
  def change
    create_table :airports, id: :uuid do |t|
      t.string :iata, limit: 3
      t.string :name
      t.integer :boarding_fee

      t.timestamps
    end
  end
end
