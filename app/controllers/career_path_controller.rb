class CareerPathController < ApplicationController

  def index
    @career_path = CareerPath.all
  end
end
