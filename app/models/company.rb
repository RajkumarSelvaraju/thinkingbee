class Company < ActiveRecord::Base

	# Relationships
	has_many :users
	has_many :tasks
	has_many :events
	has_many :phone_calls
	has_many :purchase_orders
	has_many :sales_orders
	has_many :invoices
	has_many :vendors
	has_many :quotes
	has_many :price_books
	has_many :products
	has_many :cases
	has_many :solutions
	has_many :leads
	has_many :contacts
	has_many :accounts
	has_many :appointments
	has_many :campaigns
	has_many :potentials


	# Nested Attributes
	accepts_nested_attributes_for :users

	# Validations
	validates :name, presence: true
	validates :phone, presence: true

end
