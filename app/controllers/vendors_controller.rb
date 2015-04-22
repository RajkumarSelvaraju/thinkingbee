class VendorsController < ApplicationController

  def index
    @vendors = current_company.vendors
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = current_company.vendors.build(vendor_params)
    if @vendor.save
      redirect_to vendors_path
    else
      render :new
    end
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

  def edit
    @vendor = Vendor.find(params[:id])
  end

  def update
    @vendor = Vendor.find(params[:id])
    if @vendor.update(vendor_params)
      redirect_to vendors_path
    else
      render :edit
    end
  end

  def destroy
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
    redirect_to vendors_path
  end

  def view_vendor
    @vendor = Vendor.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @vendors = current_company.vendors
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def vendor_params
    params.require(:vendor).permit(:name, :owner, :phone, :email, :website, :gl_account_id)
  end
end
