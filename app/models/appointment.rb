class Appointment < ActiveRecord::Base

	# Relationship
	belongs_to :company
	belongs_to :appointment_owner, class_name: "User", foreign_key: "owner"
	belongs_to :appointment_regarding, class_name: "Account", foreign_key: "regarding"
	belongs_to :appointment_type
	belongs_to :appointment_status

	# Delegates
	delegate :name, to: :appointment_status, prefix: true, allow_nil: true
	delegate :name, to: :appointment_type, prefix: true, allow_nil: true

	# Validations
	# validates :name, presence: true
	# validates :name, uniqueness: {scope: :company_id}
	# validates :location, presence: true
	# validates :start_date_time, presence: true
	# validates :end_date_time, presence: true
	# validates :appointment_type_id, presence: true
	# validates :appointment_status_id, presence: true
end
