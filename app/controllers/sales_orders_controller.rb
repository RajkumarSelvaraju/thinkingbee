class SalesOrdersController < ApplicationController

  def index
    @orders = current_company.sales_orders
  end

  def new
    @order = SalesOrder.new
  end

  def create
    @order = current_company.sales_orders.build(order_params)
    if @order.save
      redirect_to sales_orders_path
    else
      render :new
    end
  end

  def show
    @order = SalesOrder.find(params[:id])
  end

  def edit
    @order = SalesOrder.find(params[:id])
  end

  def update
    @order = SalesOrder.find(params[:id])
    if @order.update(order_params)
      redirect_to sales_orders_path
    else
      render :edit
    end
  end

  def destroy
    @order = SalesOrder.find(params[:id])
    @order.destroy
    redirect_to sales_orders_path
  end

  def view_order
    @order = SalesOrder.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @sales_orders = current_company.sales_orders
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def order_params
    params.require(:sales_order).permit(:name, :potential_id, :owner, :purchase_order_id, :customer_no, :order_status_id, :due_date, :quote_id, :contact_id, :pending, :exices_duty, :account_id, :sales_com)
  end
end
