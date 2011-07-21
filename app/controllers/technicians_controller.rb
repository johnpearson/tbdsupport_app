class TechniciansController < ApplicationController
  before_filter :authenticate_technician!
  
  # The show page shows the authenticated technician a list of all events
  def show
    @technician = current_technician
    @events = Event.all
    @title = "Events"
  end
end
