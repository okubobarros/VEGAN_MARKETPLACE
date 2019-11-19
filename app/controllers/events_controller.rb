class EventsController < ApplicationController


  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path
  end
end


# <%= link_to "Delete", event_path(event),
      # method: :delete,
      # data: { confirm: "Are you sure?" } %>
