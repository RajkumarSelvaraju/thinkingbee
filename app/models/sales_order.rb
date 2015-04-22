class SalesOrder < ActiveRecord::Base

	# Relationship
	belongs_to :company
	belongs_to :potential
	belongs_to :purchase_order
	belongs_to :contact
	belongs_to :order_status
	belongs_to :account
	belongs_to :sorder_owner, class_name: "User", foreign_key: "owner"
	has_one :invoice

	# Delegation
	delegate :name, to: :order_status, prefix: true, allow_nil: true
	# delegate :name, to: :potential, prefix: true, allow_nil: true
	# delegate :name, to: :account, prefix: true, allow_nil: true
	# delegate :name, to: :contact, prefix: true, allow_nil: true
	delegate :name, to: :purchase_order, prefix: true, allow_nil: true
	delegate :name, to: :invoice, prefix: true, allow_nil: true

	# Validations
	validates :name, presence: true
	validates :name, uniqueness: {scope: :company_id}
	validates :owner, presence: true
	validates :account_id, presence: true

end
