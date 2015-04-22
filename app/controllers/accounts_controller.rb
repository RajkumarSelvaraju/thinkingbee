class AccountsController < ApplicationController

  def index
    @accounts = current_company.accounts
  end

  def new
    @account = Account.new
  end

  def create
    @account = current_company.accounts.build(account_params)
    if @account.save
      redirect_to accounts_path
    else
      render :new
    end
  end

  def show
    @account = Account.find(params[:id])
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    if @account.update(account_params)
      redirect_to accounts_path
    else
      render :edit
    end
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to accounts_path
  end

  # Model View
  def view_account
    @account = Account.find(params[:id])
    render layout: false
  end

  # Dashboard
  def dashboard
    
  end

  # Report
  def report
    @accounts = current_company.accounts
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def account_params
    params.require(:account).permit(:name, :primary_contact, :owner, :parent_account_id, :account_no, :rating_id, :annual_income, :sic_code, :account_type_id)
  end
end
