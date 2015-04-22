class Address < ActiveRecord::Base

	# Polymorphic
	belongs_to :address, :polymorphic => true
end
