class PriceBook < ActiveRecord::Base

	# Relationships
	belongs_to :company
	belongs_to :book_owner, class_name: "User", foreign_key: "owner"
	belongs_to :pricing_status
	belongs_to :pricing_model

	# delegates
	delegate :name, to: :pricing_model, prefix: true, allow_nil: true
	delegate :name, to: :pricing_status, prefix: true, allow_nil: true
	# delegate :user_name, to: :book_owner, prefix: true, allow_nil: true

	# Validation
	validates :name, presence: true
	validates :name, uniqueness: {scope: :company_id}
	validates :owner, presence: true
	validates :pricing_status_id, presence: true
	validates :pricing_model_id, presence: true
end
