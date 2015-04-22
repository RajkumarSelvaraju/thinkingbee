class LeadsController < ApplicationController

  def index
    @leads = current_company.leads
  end

  def new
    @lead = Lead.new
  end

  def create
    @lead = current_company.leads.build(lead_params)
    if @lead.save
      redirect_to leads_path
    else
      render :new
    end
  end

  def show
    @lead = Lead.find(params[:id])
  end

  def edit
    @lead = Lead.find(params[:id])
  end

  def update
    @lead = Lead.find(params[:id])
    if @lead.update(lead_params)
      redirect_to leads_path
    else
      render :edit
    end
  end

  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy
    redirect_to leads_path
  end

  def view_lead
    @lead = Lead.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @leads = current_company.leads
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def lead_params
    params.require(:lead).permit(:f_name, :l_name, :company_name, :owner, :lead_status_id, :lead_source_id, :industry_id, :emp_range, :rating_id)
  end
end
