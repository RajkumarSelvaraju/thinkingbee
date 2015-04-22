class PricingStatus < ActiveRecord::Base

	# Relationship
	has_many :price_books
end
