class CreateTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :trips do |t|
      t.datetime :schedule
      t.string :origin
      t.string :destination
      t.integer :number_of_passengers
      t.float :unit_fare
      t.float :total_fare
      t.references :bus, null: false, foreign_key: true

      t.timestamps
    end
  end
end
