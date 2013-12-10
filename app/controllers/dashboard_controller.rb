class DashboardController < ApplicationController

  # GET /dashboard

  def index
    @precipitation = SMN::Report.today_precipitations.measurements.select {|p| p.location == "BUENOS AIRES"}.first
    @temperature = SMN::Report.today_temperatures.measurements.select {|t| t.location == "BUENOS AIRES"}.first
  end

end
