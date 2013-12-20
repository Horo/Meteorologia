class AddDateLocationIndex < ActiveRecord::Migration
  def change
    add_index(:precipitations, [:date, :location], unique: true)
    add_index(:temperatures, [:date, :location], unique: true)
  end
end
