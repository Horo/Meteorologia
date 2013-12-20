class TemperaturesController < ApplicationController
  # GET /temperatures
  def index
    @temperatures = Temperature.where(:date => Date.today)
  end
end
