class Precipitation < ActiveRecord::Base
  validates :date, uniqueness: { scope: :location, message: "Este dato ya fue creado" }

  def self.import
    SMN::Report.today_precipitations.measurements.each do |p|
      Precipitation.create({:date => p.date, :mm => p.mm, :kind => p.type, :province => p.province, :location => p.location})
    end  
  end
end
