class AddAttachmentImagenToSeriesTemps < ActiveRecord::Migration
  def self.up
    change_table :series_temps do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :series_temps, :imagen
  end
end
