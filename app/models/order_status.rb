class OrderStatus < ActiveRecord::Base

	# Relationship
	has_many :purchase_orders
	has_many :sales_orders
	has_many :invoices
end
