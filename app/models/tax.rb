class Tax < ActiveRecord::Base

	# Relationships
	has_many :products
end
