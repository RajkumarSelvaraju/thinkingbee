class PhoneCall < ActiveRecord::Base

	# Relationship
	belongs_to :company
	belongs_to :call_type
	belongs_to :call_purpose
	belongs_to :call_status
	belongs_to :call_owner, class_name: "User", foreign_key: "owner"

	# Delegate
	delegate :name, to: :call_type, prefix: true, allow_nil: true
	delegate :name, to: :call_purpose, prefix: true, allow_nil: true
	delegate :name, to: :call_status, prefix: true, allow_nil: true

	# Validation
	validates :name, presence: true
	validates :name, uniqueness: {scope: :company_id}
	validates :call_form, presence: true
	validates :call_to, presence: true
	validates :related_to, presence: true
	validates :owner, presence: true
	validates :call_type_id, presence: true
end
