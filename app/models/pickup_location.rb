class PickupLocation < ActiveRecord::Base
	has_many :dropoff_location
end
