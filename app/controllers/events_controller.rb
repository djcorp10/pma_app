class EventsController < ApplicationController
  def new
  	@event = Event.new
  end

  def create
    @event = current_user.events.build(params[:event])
    if @event.save
      flash[:success] = "Event Added."
      redirect_to events_path
    else
      render 'new'
    end 
  end

  def update
    @event.update_attributes(params[:event])
  end

  def show
     @event = Event.find(params[:id])
  end

  def index
  	@events = Event.paginate(page: params[:page])
  end
end
