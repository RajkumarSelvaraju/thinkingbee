class Product < ActiveRecord::Base

	# Relationship
	has_many :purchase_orders
	has_many :invoices
	has_many :cases
	has_many :solutions
	belongs_to :company
	belongs_to :product_owner, class_name: "User", foreign_key: "owner"
	belongs_to :product_status
	belongs_to :vendor
	belongs_to :product_category
	belongs_to :tax
	belongs_to :usage_unit

	# Delegate
	delegate :name, to: :product_status, prefix: true, allow_nil: true
	delegate :name, to: :vendor, prefix: true, allow_nil: true
	delegate :name, to: :product_category, prefix: true, allow_nil: true
	delegate :name, to: :tax, prefix: true, allow_nil: true
	delegate :name, to: :usage_unit, prefix: true, allow_nil: true

	# validation
	validates :name, presence: true
	validates :name, uniqueness: {scope: :company_id}
	validates :owner, presence: true
	validates :vendor, presence: true
	validates :product_status, presence: true
	validates :product_category, presence: true
	validates :tax, presence: true
	validates :usage_unit, presence: true
end
