class AddImagenToSeason < ActiveRecord::Migration
  def change
    add_column :seasons, :imagen, :string
  end
end
