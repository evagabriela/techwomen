class CalendarController < ApplicationController
  
  def index
    @results = Calendar.fetch
  end

end
