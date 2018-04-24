class CreateFederatedUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :federated_units, id: :uuid do |t|
      t.string :acronym
      t.string :name

      t.timestamps
    end
  end
end
