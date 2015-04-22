class CampaignType < ActiveRecord::Base

	# Relationship
	has_many :campaigns
end
