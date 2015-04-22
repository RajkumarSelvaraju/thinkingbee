class GlAccount < ActiveRecord::Base

	# Relationship
	has_many :vendors
end
