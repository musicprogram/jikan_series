class AddBanerToSeriesTemp < ActiveRecord::Migration
  def change
    add_column :series_temps, :baner, :string
  end
end
