class InvoicesController < ApplicationController

  def index
    @invoices = current_company.invoices
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = current_company.invoices.build(invoice_params)
    if @invoice.save
      redirect_to invoices_path
    else
      render :new
    end
  end

  def show
    @invoice = Invoice.find(params[:id])
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def update
    @invoice = Invoice.find(params[:id])
    if @invoice.update(invoice_params)
      redirect_to invoices_path
    else
      render :edit
    end
  end

  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy
    redirect_to invoices_path
  end

  def view_invoice
    @invoice = Invoice.find(params[:id])
    render layout: false
  end

  # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @invoices = current_company.invoices
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def invoice_params
    params.require(:invoice).permit(:name, :owner, :sales_order_id, :purchase_order_id, :excise_duty, :invoice_date, :due_date, :order_status_id, :sales_com, :account_id, :product_id, :contact_id)
  end
end
