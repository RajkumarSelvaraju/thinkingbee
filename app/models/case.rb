class Case < ActiveRecord::Base

	# Relationships
	belongs_to :company
	belongs_to :case_owner, class_name: "User", foreign_key: "owner"
	belongs_to :case_status
	belongs_to :contact
	belongs_to :product
	belongs_to :priority
	belongs_to :case_type
	belongs_to :case_origin
	belongs_to :case_reason
	belongs_to :account

	# Delegation
	delegate :name, to: :case_status, prefix: true, allow_nil: true
	delegate :name, to: :case_type, prefix: true, allow_nil: true
	delegate :name, to: :case_origin, prefix: true, allow_nil: true
	delegate :name, to: :case_reason, prefix: true, allow_nil: true
	delegate :name, to: :priority, prefix: true, allow_nil: true

	# Validations
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :owner, presence: true
	validates :contact_id, presence: true
	validates :case_status_id, presence: true
	validates :product_id, presence: true
	validates :priority_id, presence: true
	validates :case_type_id, presence: true
	validates :case_origin_id, presence: true
	validates :case_reason_id, presence: true
	validates :account_id, presence: true
end
