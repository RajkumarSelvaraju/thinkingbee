class Vendor < ActiveRecord::Base

	# Relationship
	has_many   :purchase_orders
	has_many   :products
	has_many   :contacts
	belongs_to :company
	belongs_to :gl_account
	belongs_to :vendor_owner, class_name: "User", foreign_key: "owner"

	# Delegation
	delegate :name, to: :gl_account, prefix: true, allow_nil: true

	# Validations
	validates :name, presence: true
	validates :name, uniqueness: { scope: :company_id }
	validates :owner, presence: true
end
