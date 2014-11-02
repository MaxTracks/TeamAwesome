class DropoffLocation < ActiveRecord::Base
	has_many :pickup_location
end
