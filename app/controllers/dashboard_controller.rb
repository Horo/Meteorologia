# encoding: utf-8

class DashboardController < ApplicationController

  # GET /dashboard

  def index
    @precipitation = Precipitation.where(:location => "BUENOS AIRES").order("date desc").first
    @temperature = Temperature.where(:location => "BUENOS AIRES").order("date desc").first
  end

end
