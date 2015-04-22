Rails.application.routes.draw do

  ActiveAdmin.routes(self)
# Company
	resources :companies, only: [:new, :create] do
		collection do
			get 'welcome'
		end
	end

# Devise - User Authentication
  	devise_for :users

# Calendar
 	resources :calendars, only: [:index]

# Leads
	resources :leads do
		collection do
			get 'view_lead'
			get 'dashboard'
			get 'report'
		end
	end

# Accounts
	resources :accounts do
		collection do
			get 'view_account'
			get 'dashboard'
			get 'report'
		end
	end

# Contacts
	resources :contacts do
		collection do
			get 'view_contact'
			get 'dashboard'
			get 'report'
		end
	end

# Activities
	resources :phone_calls do
		collection do
			get 'view_call'
			get 'dashboard'
			get 'report'
		end
	end
	resources :events do
		collection do
			get 'view_event'
			get 'dashboard'
			get 'report'
		end
	end
	resources :tasks do
	  	collection do
	  		get 'view_task'
	  		get 'dashboard'
	  		get 'report'
	  	end
	end

# Invoices & Orders
	resources :purchase_orders do
		collection do
			get 'view_order'
			get 'dashboard'
			get 'report'
		end
	end
	resources :sales_orders do
		collection do
			get 'view_order'
			get 'dashboard'
			get 'report'
		end
	end
	resources :invoices do
		collection do
			get 'view_invoice'
			get 'dashboard'
			get 'report'
		end
	end

# Quotes and More
	resources :quotes do
		collection do
			get 'view_quote'
			get 'dashboard'
			get 'report'
		end
	end
	resources :price_books do
		collection do
			get 'view_book'
			get 'dashboard'
			get 'report'
		end
	end

# Vendor
	resources :vendors do
		collection do
			get 'view_vendor'
			get 'dashboard'
			get 'report'
		end
	end

# Products and More
	resources :products do
		collection do
			get 'view_product'
			get 'dashboard'
			get 'report'
		end
	end

	resources :cases do
		collection do
			get 'view_case'
			get 'dashboard'
			get 'report'
		end
	end

	resources :solutions do
		collection do
			get 'view_solution'
			get 'dashboard'
			get 'report'
		end
	end

# Potentials
	resources :potentials do
		collection do
			get 'view_potential'
			get 'dashboard'
			get 'report'
		end
	end

# Appointments
	resources :appointments do
		collection do
			get 'view_appointment'
			get 'dashboard'
			get 'report'
		end
	end

# Campaigns
	resources :campaigns do
		collection do
			get 'view_campaign'
			get 'dashboard'
			get 'report'
		end
	end

# Landing Page
root 'leads#index'

end