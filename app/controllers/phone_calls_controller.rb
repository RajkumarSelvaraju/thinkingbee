class PhoneCallsController < ApplicationController
  
  def index
    @phone_calls = current_company.phone_calls
  end

  def new
    @phone_call = PhoneCall.new
  end

  def create
    @phone_call = current_company.phone_calls.build(phone_call_params)
    if @phone_call.save
      redirect_to phone_calls_path
    else
      render :new
    end
  end

  def show
    @phone_call = PhoneCall.find(params[:id])
  end

  def edit
    @phone_call = PhoneCall.find(params[:id])
  end

  def update
    @phone_call = PhoneCall.find(params[:id])
    if @phone_call.update(phone_call_params)
      redirect_to phone_calls_path
    else
      render :edit
    end
  end

  def destroy
    @phone_call = PhoneCall.find(params[:id])
    @phone_call.destroy
    redirect_to phone_calls_path
  end

  def view_call
    @phone_call = PhoneCall.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end

  # Report
  def report
    @phone_calls = current_company.phone_calls
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def phone_call_params
    params.require(:phone_call).permit(:name ,:call_form, :call_to, :related_to, :owner, :call_status_id, :call_purpose_id, :call_type_id)
  end
end
