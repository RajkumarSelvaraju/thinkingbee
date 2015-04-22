class Rating < ActiveRecord::Base

	# Relationships
	has_many :leads
	has_many :rating
end
