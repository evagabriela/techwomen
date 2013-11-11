class EventController < ApplicationController
  
  def index
    @results = Event.fetch
  end

end
