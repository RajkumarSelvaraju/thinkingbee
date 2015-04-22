class TaskStatus < ActiveRecord::Base
	
	# Relationship
	has_many :tasks
end
