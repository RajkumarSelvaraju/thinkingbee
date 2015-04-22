LeadStatus.delete_all
	
	LeadStatus.create(name: "Attempted to contact")
	LeadStatus.create(name: "Contact in future")
	LeadStatus.create(name: "Contacted")
	LeadStatus.create(name: "Lost Lead")
	LeadStatus.create(name: "Not Contacted")
	LeadStatus.create(name: " PreQualified")

Rating.delete_all

	Rating.create(name: "Acquired")
	Rating.create(name: "Active")
	Rating.create(name: "Market Failed")
	Rating.create(name: "Project Cancelled")
	Rating.create(name: "Shut down")

Industry.delete_all

	Industry.create(name: "ASP")
	Industry.create(name: "Data/Telecome OEM")
	Industry.create(name: "ERP")
	Industry.create(name: "Government/Miltary")
	Industry.create(name: "Large Enterprise")
	Industry.create(name: "Management")
	Industry.create(name: "Management Service Provider")
	Industry.create(name: "Network Equipment")
	Industry.create(name: "Non Management")
	Industry.create(name: "Optical Networking")
	Industry.create(name: "Service Provide")
	Industry.create(name: "Small/Medium Enterprise")
	Industry.create(name: "Non Management ISV")
	Industry.create(name: "Storage Equipment")
	Industry.create(name: "Storage Service Provider")
	Industry.create(name: "System Integrator")
	Industry.create(name: "Wireless Industry")

LeadSource.delete_all

	LeadSource.create(name: "Advertisement")
	LeadSource.create(name: "Cold Call")
	LeadSource.create(name: "Employee Referral")
	LeadSource.create(name: "External Referral")
	LeadSource.create(name: "Online Store")
	LeadSource.create(name: "Partner")
	LeadSource.create(name: "Public Relations")
	LeadSource.create(name: "Sales Mail Alias")
	LeadSource.create(name: "Seminar Partner")
	LeadSource.create(name: "Seminar Internal")
	LeadSource.create(name: "Trade Show")
	LeadSource.create(name: "Web Download")
	LeadSource.create(name: "Web Research")
	LeadSource.create(name: "Chat")

AccountType.delete_all

	AccountType.create(name: "Analyst")
	AccountType.create(name: "Competitor")
	AccountType.create(name: "Customer")
	AccountType.create(name: "Distributor")
	AccountType.create(name: "Integrator")
	AccountType.create(name: "Investor")
	AccountType.create(name: "Other")
	AccountType.create(name: "Partner")
	AccountType.create(name: "Press")
	AccountType.create(name: "Prospect")
	AccountType.create(name: "Reseller")
	AccountType.create(name: "Supplier")
	AccountType.create(name: "Vendor")

Ownership.delete_all

	Ownership.create(name: "Other")
	Ownership.create(name: "Private")
	Ownership.create(name: "Public")
	Ownership.create(name: "Subsidary")

PotentialStage.delete_all

	PotentialStage.create(name: "Qualification")
	PotentialStage.create(name: "Need Analysis")
	PotentialStage.create(name: "Value Proposition")
	PotentialStage.create(name: "Desicion Makers")
	PotentialStage.create(name: "Proposal/Price Quote")
	PotentialStage.create(name: "Negotiation/Review")
	PotentialStage.create(name: "Closed Won")
	PotentialStage.create(name: "Closed Lost")
	PotentialStage.create(name: "Closed Lost Competition")

CampaignType.delete_all

	CampaignType.create(name: "Conference")
	CampaignType.create(name: "Webminar")
	CampaignType.create(name: "Trade Show")
	CampaignType.create(name: "Public Relation")
	CampaignType.create(name: "Partner")
	CampaignType.create(name: "Referral Show")
	CampaignType.create(name: "Advertisement")
	CampaignType.create(name: "Banner Ads")
	CampaignType.create(name: "Direct Mail")
	CampaignType.create(name: "Email")
	CampaignType.create(name: "Telemarketing")
	CampaignType.create(name: "Others")

CampaignStatus.delete_all

	CampaignStatus.create(name: "Planning")
	CampaignStatus.create(name: "Active")
	CampaignStatus.create(name: "InActive")
	CampaignStatus.create(name: "Complete")

CallPurpose.delete_all

	CallPurpose.create(name: "Prospecting")
	CallPurpose.create(name: "Administrative")
	CallPurpose.create(name: "Negotiation")
	CallPurpose.create(name: "Demo")
	CallPurpose.create(name: "Project")
	CallPurpose.create(name: "Support")

CaseStatus.delete_all

	CaseStatus.create(name: "New")
	CaseStatus.create(name: "Escalated")
	CaseStatus.create(name: "OnHold")
	CaseStatus.create(name: "Closed")

CallType.delete_all

	CallType.create(name: "Inbound")
	CallType.create(name: "Outbound")

ProductCategory.delete_all

	ProductCategory.create(name: "Hardware")
	ProductCategory.create(name: "Software")
	ProductCategory.create(name: "Other applications")

CaseType.delete_all

	CaseType.create(name: "Problem")
	CaseType.create(name: "Freature Request")
	CaseType.create(name: "Question")

CaseOrigin.delete_all

	CaseOrigin.create(name: "Email")
	CaseOrigin.create(name: "Phone")
	CaseOrigin.create(name: "Web")

Priority.delete_all

	Priority.create(name: "High")
	Priority.create(name: "Medium")
	Priority.create(name: "Low")

CaseReason.delete_all

	CaseReason.create(name: "User did not attend any training")
	CaseReason.create(name: "Complex Functionality")
	CaseReason.create(name: "Existing Problem")
	CaseReason.create(name: "Instruction Not clear")
	CaseReason.create(name: "New Problem")

SolutionStatus.delete_all

	SolutionStatus.create(name: "Draft")
	SolutionStatus.create(name: "Reviewed")
	SolutionStatus.create(name: "Duplicate")

GlAccount.delete_all

	GlAccount.create(name: "Sales Software")
	GlAccount.create(name: "Sales Hardware")
	GlAccount.create(name: "Rental Income")
	GlAccount.create(name: "Interest Income")
	GlAccount.create(name: "Sales Software Support")
	GlAccount.create(name: "Sales Others")
	GlAccount.create(name: "Interest Sales")
	GlAccount.create(name: "Service Hardware Labore")

PricingModel.delete_all

	PricingModel.create(name: "Flat")
	PricingModel.create(name: "Differential")

PricingStatus.delete_all

	PricingStatus.create(name: "Active")
	PricingStatus.create(name: "InActive")

OrderStatus.delete_all

	OrderStatus.create(name: "Created")
	OrderStatus.create(name: "Approved")
	OrderStatus.create(name: "Delivered")
	OrderStatus.create(name: "Cancelled")

QuoteStage.delete_all

	QuoteStage.create(name: "Draft")
	QuoteStage.create(name: "Negotiation")
	QuoteStage.create(name: "Delivered")
	QuoteStage.create(name: "OnHold")
	QuoteStage.create(name: "Confirmed")
	QuoteStage.create(name: "Closed Won")
	QuoteStage.create(name: "Closed Lost")

TaskStatus.delete_all

	TaskStatus.create(name: "Not Started")
	TaskStatus.create(name: "In Progress")
	TaskStatus.create(name: "Droped")
	TaskStatus.create(name: "Completed")

TaskCategory.delete_all

	TaskCategory.create(name: "Call")
	TaskCategory.create(name: "Email")
	TaskCategory.create(name: "Follow Up")
	TaskCategory.create(name: "Other")

EventStatus.delete_all

	EventStatus.create(name: "New")
	EventStatus.create(name: "Droped")
	EventStatus.create(name: "Completed")

CallStatus.delete_all

	CallStatus.create(name: "Scheduled Next Call")
	CallStatus.create(name: "Not Attending")
	CallStatus.create(name: "Not Reacheable")
	CallStatus.create(name: "Not Interested")

ProductStatus.delete_all

	ProductStatus.create(name: "Active")
	PricingStatus.create(name: "InActive")

Tax.delete_all
	
	Tax.create(name: "Sales Tax")
	Tax.create(name: "VAT")

UsageUnit.delete_all

	UsageUnit.create(name: "KG")
	UsageUnit.create(name: "Liter")
	UsageUnit.create(name: "Gram")