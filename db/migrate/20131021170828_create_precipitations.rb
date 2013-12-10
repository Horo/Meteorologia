class CreatePrecipitations < ActiveRecord::Migration
  def change
    create_table :precipitations do |t|
    t.date :date
    t.float :mm
    t.string :type
    t.string :province
    t.string :location
    end
  end
end
