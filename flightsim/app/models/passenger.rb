class Passenger < ActiveRecord::Base

    has_many :flights
    has_many :airplanes, through: :flights
    
end
