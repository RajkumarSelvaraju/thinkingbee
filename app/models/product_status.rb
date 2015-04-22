class ProductStatus < ActiveRecord::Base

	# Relationship
	has_many :products
end
