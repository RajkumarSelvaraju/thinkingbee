class LeadStatus < ActiveRecord::Base

	# Relationships
	has_many :leads
	has_many :contacts
end
