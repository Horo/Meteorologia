class PrecipitationsController < ApplicationController
  # GET /precipitations
  def index
    @precipitations = SMN::Report.today_precipitations.measurements 
  end
end
  
