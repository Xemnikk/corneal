require 'pry'
Airplane.destroy_all
Passenger.destroy_all
Flight.destroy_all

Airplane.create(
    callsign: "Victor"
)
Airplane.create(
    callsign: "Sierra"
)
Airplane.create(
    callsign: "November"
)
Airplane.create(
    callsign: "Romeo"
)
Airplane.create(
    callsign: "Echo"
)
Airplane.create(
    callsign: "Papa"
)
Airplane.create(
    callsign: "Foxtrot"
)
Airplane.create(
    callsign: "Tango"
)
Airplane.create(
    callsign: "Whiskey"
)
Airplane.create(
    callsign: "Skelly"
)


30.times do Passenger.create(
    name: "#{[*?A..?Z].sample( 2 ).join}#{rand 100..999}",
    
)
end

15.times do Flight.create(
    flight_num: rand.to_s[2..5],
    passenger_id: Passenger.all.sample.id,
    airplane_id: Airplane.all.sample.id
)
end
