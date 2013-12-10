class TemperaturesController < ApplicationController
  # GET /temperatures
  def index
    @temperatures = SMN::Report.today_temperatures.measurements
  end
end
