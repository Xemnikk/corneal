class CreateAirplanes < ActiveRecord::Migration
  def change
    create_table :airplanes do |t|
      t.string :callsign
      t.timestamps null: false
    end
  end
end
