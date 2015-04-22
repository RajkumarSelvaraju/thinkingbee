class Account < ActiveRecord::Base

	# Relationship
	has_many :sales_orders
	has_many :invoices
	has_many :quotes
	has_many :cases
	has_many :appointments
	has_many :contacts
	has_many :potentials
	belongs_to :company
	belongs_to :account_owner, class_name: "User", foreign_key: "owner"
	belongs_to :rating
	belongs_to :account_type

	# Delegates
	delegate :name, to: :rating, prefix: true, allow_nil: true
	delegate :name, to: :account_type, prefix: true, allow_nil: true
end
