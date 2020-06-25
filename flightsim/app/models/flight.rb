class Flight < ActiveRecord::Base

    belongs_to :airplane
    belongs_to :passenger
    
end
