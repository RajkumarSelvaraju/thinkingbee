class CampaignStatus < ActiveRecord::Base

	# Relationship
	has_many :campaigns
end
