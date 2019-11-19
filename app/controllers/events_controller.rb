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
end

private

def event_params
  params.require(:event).permit(:title, :address, :description, :type_of_meal, :calendar, :type_of_event, :time, :limit_of_guests)
end
