class RenamePrecipitationTypeTable < ActiveRecord::Migration
  def change
    change_table :precipitations do |a|
      a.rename :type, :kind
    end
  end
end
