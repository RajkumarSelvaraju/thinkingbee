class AppointmentsController < ApplicationController

  def index
    @appointments = current_company.appointments
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = current_company.appointments.build(appointment_params)
    if @appointment.save
      redirect_to appointments_path
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      redirect_to appointments_path
    else
      render :edit
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end

  def view_appointment
    @appointment = Appointment.find(params[:id])
    render layout: false
  end

  # Dashboard
  def dashboard
    
  end

  # Report
  def report
    @appointments = current_company.appointments
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:name, :owner, :location, :regarding, :start_date_time, :end_date_time, :appointment_type_id, :appointment_status_id)
  end
end
