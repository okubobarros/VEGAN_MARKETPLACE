class EventsController < ApplicationController

  def edit
    @event = edit.find(params[:id])
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end



  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :address, :type_of_meal,
                                  :calendar, :type_of_event, :time, :limit_of_guests)
  end

end
