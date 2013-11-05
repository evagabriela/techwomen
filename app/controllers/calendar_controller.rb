class CalendarController < ApplicationController
  
  def index
    Calendar.fetch
  end

end
