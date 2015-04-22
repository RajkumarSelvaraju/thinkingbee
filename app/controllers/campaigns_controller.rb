class CampaignsController < ApplicationController

  def index
    @campaigns = current_company.campaigns
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = current_company.campaigns.build(campaign_params)
    if @campaign.save
      redirect_to campaigns_path
    else
      render :new
    end
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update(campaign_params)
      redirect_to campaigns_path
    else
      render :edit
    end
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy
    redirect_to campaigns_path
  end

  # Model
  def view_campaign
    @campaign = Campaign.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

  # Report
  def report
    @campaigns = current_company.campaigns
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :owner, :campaign_type_id, :campaign_status_id, :expected_revenue, :budget_cost, :actual_cost, :expected_response, :number_sent, :start_date, :end_date)
  end
end
