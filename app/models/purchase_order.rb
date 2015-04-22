class PurchaseOrder < ActiveRecord::Base

	# Relationships
	belongs_to :company
	belongs_to :product
	belongs_to :order_status
	belongs_to :contact
	belongs_to :vendor
	belongs_to :porder_owners, class_name: "User", foreign_key: "owner"
	has_one :sales_order
	has_one :invoice

	# Delegation
	delegate :name, to: :order_status, prefix: true, allow_nil: true
	# delegate :name, to: :vendor, prefix: true, allow_nil: true
	# delegate :name, to: :product, prefix: true, allow_nil: true
	# delegate :name, to: :contact, prefix: true, allow_nil: true
	delegate :name, to: :sales_order, prefix: true, allow_nil: true
	delegate :name, to: :invoice, prefix: true, allow_nil: true

	# Validations
	validates :name, presence: true
	validates :name, uniqueness: {scope: :company_id}
	validates :vendor_id, presence: true

end
