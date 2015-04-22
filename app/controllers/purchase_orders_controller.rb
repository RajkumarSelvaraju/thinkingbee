class PurchaseOrdersController < ApplicationController

  def index
    @orders = current_company.purchase_orders
  end

  def new
    @order = PurchaseOrder.new
  end

  def create
    @order = current_company.purchase_orders.build(order_params)
    if @order.save
      redirect_to purchase_orders_path
    else
      render :new
    end
  end

  def show
    @order = PurchaseOrder.find(params[:id])
  end

  def edit
    @order = PurchaseOrder.find(params[:id])
  end

  def update
    @order = PurchaseOrder.find(params[:id])
    if @order.update(order_params)
      redirect_to purchase_orders_path
    else
      render :edit
    end
  end

  def destroy
    @order = PurchaseOrder.find(params[:id])
    @order.destroy
    redirect_to purchase_orders_path
  end

  def view_order
    @order = PurchaseOrder.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @purchase_orders = current_company.purchase_orders
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def order_params
    params.require(:purchase_order).permit(:name, :po_date, :due_date, :po_no, :owner, :order_status_id, :vendor_id, :requistion_no, :tracking_no, :contact_id, :excise_duty, :sales_com, :product_id)
  end
end
