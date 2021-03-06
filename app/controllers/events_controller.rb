class EventsController < ApplicationController

  before_action :authenticate_user!, :except => [:index]

  def index
    @events = Event.order(:date).all
    # @past_events = Event.where("date < ?", Date.today).order(:date)
    # @upcoming_events = Event.where("date >= ?", Date.today).order(:date)
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :location, :date, :time)
  end

end
