class LeadSource < ActiveRecord::Base

	# Relationships
	has_many :leads
	has_many :potentials
end
