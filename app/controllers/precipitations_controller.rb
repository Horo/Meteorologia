class PrecipitationsController < ApplicationController
  # GET /precipitations
  def index
    @precipitations = Precipitation.where(:date => Date.today)
  end
end
  
