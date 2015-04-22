class Quote < ActiveRecord::Base

	# Relationships
	belongs_to :company
	belongs_to :potential
	belongs_to :quote_stage
	belongs_to :contact
	belongs_to :account
	belongs_to :quote_owner, class_name: "User", foreign_key: "owner"

	# Delegates
	# delegate :name, to: :potential, prefix: true, allow_nil: true
	delegate :name, to: :quote_stage, prefix: true, allow_nil: true
	# delegate :name, to: :contact, prefix: true, allow_nil: true
end
