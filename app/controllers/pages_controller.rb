class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:query].present?
      @events = Event.where("address ILIKE ?", "%#{params[:query]}%")
    else
      @events = Event.all
    end
  end
end
