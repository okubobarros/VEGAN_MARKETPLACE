class EventsController < ApplicationController

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

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to event_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :address, :type_of_meal, :calendar, :type_of_event, :time, :limit_of_guests)
  end
end


