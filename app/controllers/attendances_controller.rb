class AttendancesController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    if @event.attendees.include? current_user
      redirect_to @event
    else
      @event.attendees << current_user
      redirect_to @event
    end
  end

end
