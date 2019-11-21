class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @events = Event.all
    # @events = Event.order(:title).page params[:page]
  end
end
