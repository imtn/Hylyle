class EventsController < ApplicationController
  before_action :get_user
  def index
  end

  def new
    @event = @user.events.new
  end

  def create
    myEvent = @user.events.new(event_params)
    if myEvent.save
      redirect_to user_events_path
    else
      render 'new'
    end
  end

  private
    def event_params
      params.require(:event).permit(:title, :description, :date, :time, :isDeadline)
    end

    def get_user
      @user = User.find(current_user.id)
    end
end
