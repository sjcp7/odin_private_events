class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    current_user.events.create(event_params)
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date)
  end
end
