class Lead < ActiveRecord::Base

	# Relationships
	belongs_to :company
	belongs_to :lead_status
	belongs_to :lead_source
	belongs_to :rating
	belongs_to :industry
	belongs_to :lead_owner, class_name: "User", foreign_key: "owner"
	has_one :information, as: :general_info, class_name: "Address"

	# Delegates
	delegate :name, to: :lead_owner, prefix: true, allow_nil: true
	delegate :name, to: :lead_source, prefix: true, allow_nil: true
	delegate :name, to: :rating, prefix: true, allow_nil: true
	delegate :name, to: :industry, prefix: true, allow_nil: true

	# Validations
	# validates :f_name, presence: true
	# validates :l_name, presence: true
	# validates :company_name, presence: true
	# validates :lead_status_id, presence: true
	# validates :lead_source_id, presence: true
	
end
