class EventsController < ApplicationController
  before_action :authenticate_admin!, except: [:index]
  layout "admin", only: [:new, :create, :update,  :admin_all_events, :admin_show_event]
  def index
    @events = Event.order('created_at DESC')  
  end
  def admin_all_events
    @events = Event.order('created_at DESC')
  end
  
  def new
    @event= Event.new
  end
  
  def create 
    @event = Event.create(event_params)
    
    if @event.save
      flash[:notice] = "The event has been saved"
      redirect_to "/admin_all_events"  
    else
      flash[:alert] = "The event has not been created"
      render "new"
    end
    
  end

  def show
    @event = Event.find(params[:id]) 
    @events = Event.all  
  end

  def admin_show_event
    @event = Event.find(params[:id]) 
    @events = Event.all  
  end

  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    if @artist.update(event_params)
      flash[:notice] = "Event has been updated."
      #   redirect_to admin_panel_index_path
    end  
  end


  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to events_path, :notice => "Event deleted."
  end


  private
  def event_params
    params.require(:event).permit(:name , :image, :summary, :date, :start_time)  
  end

end
