class AddImagenToSeriesTemp < ActiveRecord::Migration
  def change
    add_column :series_temps, :imagen, :string
  end
end
