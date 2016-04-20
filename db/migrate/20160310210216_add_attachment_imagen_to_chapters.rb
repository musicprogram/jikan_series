class AddAttachmentImagenToChapters < ActiveRecord::Migration
  def self.up
    change_table :chapters do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :chapters, :imagen
  end
end
