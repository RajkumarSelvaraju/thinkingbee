class EventStatus < ActiveRecord::Base

	# Relationship
	has_many :events
end
