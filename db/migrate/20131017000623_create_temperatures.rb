class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|
      t.date :date
      t.float :max
      t.float :min
      t.string :province
      t.string :location
    end
  end
end
