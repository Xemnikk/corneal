class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :flight_num
      t.integer :passenger_id
      t.integer :airplane_id
      t.timestamps null: false
    end
  end
end
