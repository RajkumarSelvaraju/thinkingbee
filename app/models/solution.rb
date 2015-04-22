class Solution < ActiveRecord::Base

	# Relationship
	belongs_to :company
	belongs_to :solution_owner, class_name: "User", foreign_key: "owner"
	belongs_to :solution_status
	belongs_to :product


	# Delegation
	delegate :name, to: :solution_status, prefix: true, allow_nil: true
	delegate :name, to: :product, prefix: true, allow_nil: true

	# Validation
	validates :name, presence: true
	validates :name, uniqueness: {scope: :company_id}
	validates :owner, presence: true
	validates :solution_status_id, presence: true
	# validates :product_id, presence: true
end
