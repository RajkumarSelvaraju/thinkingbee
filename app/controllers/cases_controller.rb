class CasesController < ApplicationController

  def index
    @cases = current_company.cases
  end

  def new
    @case = Case.new
  end

  def create
    @case = current_company.cases.build(case_params)
    if @case.save
      redirect_to cases_path
    else
      render :new
    end
  end

  def show
    @case = Case.find(params[:id])
  end

  def edit
    @case = Case.find(params[:id])
  end

  def update
    @case = Case.find(params[:id])
    if @case.update(case_params)
      redirect_to cases_path
    else
      render :edit
    end
  end

  def destroy
    @case = Case.find(params[:id])
    @case.destroy
    redirect_to cases_path
  end

  # Modal View
  def view_case
    @case = Case.find(params[:id])
    render layout: false
  end

  # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @cases = current_company.cases
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def case_params
    params.require(:case).permit(:name, :owner, :case_status_id, :contact_id, :product_id, :priority_id, :case_type_id, :case_origin_id, :case_reason_id, :account_id, :reported_by, :comments, :phone, :email)
  end
end
