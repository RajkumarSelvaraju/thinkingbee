class PriceBooksController < ApplicationController

  def index
    @books = current_company.price_books
  end

  def new
    @book = PriceBook.new
  end

  def create
    @book = current_company.price_books.build(book_params)
    if @book.save
      redirect_to price_books_path
    else
      render :new
    end
  end

  def show
    @book = PriceBook.find(params[:id])
  end

  def edit
    @book = PriceBook.find(params[:id])
  end

  def update
    @book = PriceBook.find(params[:id])
    if @book.update(book_params)
      redirect_to price_books_path
    else
      render :edit
    end
  end

  def destroy
    @book = PriceBook.find(params[:id])
    @book.destroy
    redirect_to price_books_path
  end

  def view_book
    @book = PriceBook.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @books = current_company.price_books
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def book_params
    params.require(:price_book).permit(:name, :owner, :pricing_status_id, :pricing_model_id)
  end
end
