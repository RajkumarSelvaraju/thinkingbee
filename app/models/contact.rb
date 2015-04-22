class Contact < ActiveRecord::Base

	# Relationship
	has_many :purchase_orders
	has_many :sales_orders
	has_many :invoices
	has_many :quotes
	has_many :cases
	has_many :potentials
	belongs_to :company
	belongs_to :contact_owner, class_name: "User", foreign_key: "owner"
	belongs_to :lead_source
	belongs_to :account
	belongs_to :vendor

	# Delegates
	delegate :name, to: :lead_source, prefix: true, allow_nil: true
	delegate :name, to: :account, prefix: true, allow_nil: true
	delegate :name, to: :vendor, prefix: true, allow_nil: true

	# Validations
	# validates :f_name, presence: true
	# validates :l_name, presence: true
	# validates :company_name, presence: true
	# validates :lead_source_id, presence: true
	# validates :department, presence: true
end
