class QuotesController < ApplicationController

  def index
    @quotes = current_company.quotes
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = current_company.quotes.build(quote_params)
    if @quote.save
      redirect_to quotes_path
    else
      render :new
    end
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update(quote_params)
      redirect_to quotes_path
    else
      render :edit
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    redirect_to quotes_path
  end

  def view_quote
    @quote = Quote.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @quotes = current_company.quotes
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def quote_params
    params.require(:quote).permit(:name, :owner, :potential_id, :quote_stage_id, :valid_till, :contact_id, :account_id)
  end
end
