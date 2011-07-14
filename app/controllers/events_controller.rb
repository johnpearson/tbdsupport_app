class EventsController < ApplicationController
  before_filter :authenticate_user!
  
  # New handles new event creation and presents a new event form
  def new
    @user = current_user
    @event = Event.new
  end
  
  # Creates event in database and offers successful flash notice if saved 
  # otherwise it redirects back to the new event page
  def create
    @user = current_user
    @event = current_user.events.build(params[:event])
    if @event.save
      # EventMailer configuration to send email of event data to technicans
      EventMailer.event_email(@user, @event).deliver
      flash[:notice] = "Event Created! A Technician will contact you soon."
      redirect_to events_path
    else
      redirect_to new_event_path
    end
  end
  
  # Shows the current user's events and paginates over them by 2
  def index
    @user = current_user
    @events = @user.events.paginate(:page => params[:page], :per_page => 2)
    @title = "Your Events"
  end
  
  # Edit the event fields and redirect to the event to show the changes
  def edit
    @user = current_user
    @event = Event.find(params[:id])
  end
  
  # Updates the event being edited
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:notice] = "Event Updated!"
      redirect_to event_path
    else
      redirect_to events_path
    end
  end
  
  # Deletes event
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:success] = "Event deleted!"
    redirect_to events_path
  end
  
  # Shows single event
  def show
    @user = current_user
    @event = Event.find(params[:id])
  end
end
