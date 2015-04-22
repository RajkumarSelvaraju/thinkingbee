class CompaniesController < ApplicationController

	# Filters
	skip_before_filter :authenticate_user!, only: [ :new, :create,:welcome]


	# Create new Company
	def new
		@company = Company.new
		@company.users.build
	end

	def create
		@company = Company.new(company_params)
		if @company.save
			flash[:notice] = "Signed up successfully"
			redirect_to user_session_path
		else
			render :new
		end
	end

	# Welcome Message after sign up
	def welcome
	end

	private

	def company_params
		params.require(:company).permit(:name, :phone, users_attributes: [:email, :password, :password_confirmation])
	end
end