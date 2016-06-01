class AddOrdenToSeason < ActiveRecord::Migration
  def change
    add_column :seasons, :orden, :integer
  end
end
