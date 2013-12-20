class Temperature < ActiveRecord::Base
  validates :date, uniqueness: { scope: :location, message: "Este dato ya fue creado" }

  def self.import
    SMN::Report.today_temperatures.measurements.each do |t|
      Temperature.create({:date => t.date, :max => t.max, :min => t.min, :province => t.province, :location => t.location})
    end
  end    
end
