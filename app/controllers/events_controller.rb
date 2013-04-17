class EventsController < ApplicationController
  before_filter :admin_user,     only: [:destroy, :new, :update]

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

  def destroy
    Event.find(params[:id]).destroy
    flash[:success] = "Event destroyed."
    redirect_to events_path
  end 

  def show
     @event = Event.find(params[:id])
  end

  def index
  	@events = Event.paginate(page: params[:page])
  end

  private
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end 
end
