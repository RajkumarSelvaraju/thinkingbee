class Potential < ActiveRecord::Base

	# Relationships
	has_many :sales_orders
	has_many :quotes
	belongs_to :company
	belongs_to :potential_owner, class_name: "User", foreign_key: "owner"
	belongs_to :contact
	belongs_to :account
	belongs_to :potential_stage
	belongs_to :potential_type
	belongs_to :lead_source
	belongs_to :campaign

	# Delegates
	delegate :name, to: :account, prefix: true, allow_nil: true
	delegate :f_name, to: :contact, prefix: true, allow_nil: true
	delegate :name, to: :potential_type, prefix: true, allow_nil: true
	delegate :name, to: :potential_stage, prefix: true, allow_nil: true
	delegate :name, to: :lead_source, prefix: true, allow_nil: true
	delegate :name, to: :campaign, prefix: true, allow_nil: true

end
