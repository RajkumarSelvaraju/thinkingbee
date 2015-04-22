class ProductsController < ApplicationController

  def index
    @products = current_company.products
  end

  def new
    @product = Product.new
  end

  def create
    @product = current_company.products.build(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def view_product
    @product = Product.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @products = current_company.products
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :owner, :code, :product_status_id, :vendor_id, :product_category_id, :unit_price, :com_rate, :tax_id, :usage_unit_id, :qty_ordered, :qty_stock)
  end
end
