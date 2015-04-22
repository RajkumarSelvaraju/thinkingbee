class AppointmentType < ActiveRecord::Base

	# Relationship
	has_many :appointments
end
