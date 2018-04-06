class CreateAircrafts < ActiveRecord::Migration[5.1]
  def change
    create_table :aircrafts, id: :uuid do |t|
      t.string :iata, limit: 3
      t.string :name
      t.string :manufacturer
    end
  end
end
