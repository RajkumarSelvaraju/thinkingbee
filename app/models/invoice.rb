class Invoice < ActiveRecord::Base

	# Relationships
	belongs_to :company
	belongs_to :sales_order
	belongs_to :purchase_order
	belongs_to :order_status
	belongs_to :account
	belongs_to :product
	belongs_to :contact

	# Delegation
	delegate :name, to: :order_status, prefix: true, allow_nil: true
	delegate :name, to: :sales_order, prefix: true, allow_nil: true
	delegate :name, to: :purchase_order, prefix: true, allow_nil: true
	# delegate :name, to: :account, prefix: true, allow_nil: true
	# delegate :name, to: :product, prefix: true, allow_nil: true
	# delegate :name, to: :contact, prefix: true, allow_nil: true

	# Validations
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :account_id, presence: true
end
