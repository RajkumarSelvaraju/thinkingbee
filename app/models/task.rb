class Task < ActiveRecord::Base

	# Acossiations
	belongs_to :company
	belongs_to :task_category
	belongs_to :task_status
	belongs_to :priority
	belongs_to :task_owner, class_name: "User", foreign_key: "owner"

	# Delegate
	delegate :name, to: :task_category, prefix: true, allow_nil: true
	delegate :name, to: :task_status, prefix: true, allow_nil: true
	delegate :name, to: :priority, prefix: true, allow_nil: true

	# Validation
	validates :name, presence: true
	validates :name, uniqueness: {scope: :company_id}
	validates :due_date, presence: true
	validates :owner, presence: true
end
