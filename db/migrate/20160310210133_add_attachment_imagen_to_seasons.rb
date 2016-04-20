class AddAttachmentImagenToSeasons < ActiveRecord::Migration
  def self.up
    change_table :seasons do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :seasons, :imagen
  end
end
