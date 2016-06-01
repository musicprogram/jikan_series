class AddOrdenToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :orden, :integer
  end
end
