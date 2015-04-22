class ContactsController < ApplicationController

  def index
    @contacts = current_company.contacts
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = current_company.contacts.build(contact_params)
    if @contact.save
      redirect_to contacts_path
    else
      render :new
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to contacts_path
    else
      render :edit
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path
  end

  def view_contact
    @contact = Contact.find(params[:id])
    render layout: false
  end

  # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @contacts = current_company.contacts
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:f_name, :l_name, :company_name, :owner, :lead_source_id, :account_id, :vendor_id, :department)
  end
end
