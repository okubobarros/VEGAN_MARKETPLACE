class BookingsController < ApplicationController

  def index
    if params[:user_id].present? && params([:number_of_guests]) <= @event.number_of_guests
      @bookings = Booking.where(user: params[:user_id])
    else
      redirect_to root_path
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @event = Event.find(params[:event_id])
    @booking.event = @event
    @booking.user_id = current_user.id
    @booking.save!
    redirect_to event_path(@event)
  end

  private

  def booking_params
    params.require(:booking).permit(:number_of_guests)
  end
end
