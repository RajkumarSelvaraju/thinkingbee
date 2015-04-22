class Event < ActiveRecord::Base

	# Relationship
	belongs_to :company
	belongs_to :priority
	belongs_to :event_owner, class_name: "User", foreign_key: "owner"
	belongs_to :event_status

	# Delegate
	delegate :name, to: :priority, prefix: true, allow_nil: true
	delegate :name, to: :event_status, prefix: true, allow_nil: true

	# Validations
	validates :name, presence: true
	validates :name, uniqueness: {scope: :company_id}
	validates :owner, presence: true
end

