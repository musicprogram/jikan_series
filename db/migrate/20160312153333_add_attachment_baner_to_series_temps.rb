class AddAttachmentBanerToSeriesTemps < ActiveRecord::Migration
  def self.up
    change_table :series_temps do |t|
      t.attachment :baner
    end
  end

  def self.down
    remove_attachment :series_temps, :baner
  end
end
