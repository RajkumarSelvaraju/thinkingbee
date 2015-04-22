class AccountType < ActiveRecord::Base

	# Relationships
	has_many :accounts
end
