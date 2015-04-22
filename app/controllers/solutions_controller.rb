class SolutionsController < ApplicationController

  def index
    @solutions = current_company.solutions
  end

  def new
    @solution = Solution.new
  end

  def create
    @solution = current_company.solutions.build(solution_params)
    if @solution.save
      redirect_to solutions_path
    else
      render :new
    end
  end

  def show
    @solution = Solution.find(params[:id])
  end

  def edit
    @solution = Solution.find(params[:id])
  end

  def update
    @solution = Solution.find(params[:id])
    if @solution.update(solution_params)
      redirect_to solutions_path
    else
      render :edit
    end
  end

  def destroy
    @solution = Solution.find(params[:id])
    @solution.destroy
    redirect_to solutions_path
  end

  def view_solution
    @solution = Solution.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @solutions = current_company.solutions
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def solution_params
    params.require(:solution).permit(:name, :owner, :solution_status_id, :product_id, :question, :answer)
  end
end
