class Priority < ActiveRecord::Base

	# Relationship
	has_many :tasks
	has_many :events
	has_many :cases
end
