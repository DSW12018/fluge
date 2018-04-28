class CreateAirlines < ActiveRecord::Migration[5.1]
  def change
    create_table :airlines, id: :uuid do |t|
      t.string :iata
      t.string :name

      t.timestamps
    end
  end
end
