class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable, :confirmable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Accociations
  belongs_to :company
  has_many :task_owners, class_name: "Task", foreign_key: "owner"
  has_many :event_owners, class_name: "Event", foreign_key: "owner"
  has_many :call_owners, class_name: "PhoneCall", foreign_key: "owner"
  has_many :porder_owners, class_name: "PurchaseOrder", foreign_key: "owner"
  has_many :sorder_owners, class_name: "SalesOrder", foreign_key: "owner"
  has_many :vendor_owners, class_name: "Vendor", foreign_key: "owner"
  has_many :quote_owners, class_name: "Quote", foreign_key: "owner"
  has_many :product_owers, class_name: "Product", foreign_key: "owner"
  has_many :lead_owners, class_name: "Lead", foreign_key: "owner"
  has_many :contact_owners, class_name: "Contact", foreign_key: "owner"
  has_many :account_owners, class_name: "Account", foreign_key: "owner"
  has_many :appointment_owners, class_name: "Appointment", foreign_key: "owner"
  has_many :potential_owners, class_name: "Potential", foreign_key: "owner"
  has_many :campaign_owners, class_name: "Campaign", foreign_key: "owner"
end
