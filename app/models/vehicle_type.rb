class VehicleType < ActiveRecord::Base
    has_many :vehicles
    
     def name
        self.description
    end
end
