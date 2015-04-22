class PotentialsController < ApplicationController

  def index
    @potentials = current_company.potentials
  end

  def new
    @potential = Potential.new
  end

  def create
    @potential = current_company.potentials.build(potential_params)
    if @potential.save
      redirect_to potentials_path
    else
      render :new
    end
  end

  def show
    @potential = Potential.find(params[:id])
  end

  def edit
    @potential = Potential.find(params[:id])
  end

  def update
    @potential = Potential.find(params[:id])
    if @potential.update(potential_params)
      redirect_to potentials_path
    else
      render :edit
    end
  end

  def destroy
    @potential = Potential.find(params[:id])
    @potential.destroy
    redirect_to potentials_path
  end

  def view_potential
    @potential = Potential.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

    # Report
  def report
    @potentials = current_company.potentials
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def potential_params
    params.require(:potential).permit(:name, :owner, :amount, :contact_id, :closing_date, :account_id, :potential_stage_id, :potential_type_id, :probability, :next_step, :expected_revenue, :lead_source_id, :campaign_id)
  end
end
