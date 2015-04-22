class ProductCategory < ActiveRecord::Base

	# Relationships
	has_many :products
end
