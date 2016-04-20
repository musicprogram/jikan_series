class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :link
      t.string :video
      t.string :tag
      t.text :description
      t.string :year
      t.string :director
      t.string :duration
      t.string :country

      t.timestamps null: false
    end
  end
end
