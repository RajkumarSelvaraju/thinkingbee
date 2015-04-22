class EventsController < ApplicationController

  def index
    @events = current_company.events
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_company.events.build(event_params)
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to events_path
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  def view_event
    @event = Event.find(params[:id])
    render layout: false
  end

   # Dashboard
  def dashboard
    
  end
    # Report
  def report
    @events = current_company.events
    respond_to do |format|
      format.xlsx
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :priority_id, :start_date_time, :end_date_time, :location, :owner, :event_status_id, :related_to)
  end
end