class EventsController < ApplicationController


  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path
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


# <%= link_to "Delete", event_path(event),
      # method: :delete,
      # data: { confirm: "Are you sure?" } %>
