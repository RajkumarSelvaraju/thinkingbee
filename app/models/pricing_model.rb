class PricingModel < ActiveRecord::Base

	# Relationship
	has_many :pricing_books
end
