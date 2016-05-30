class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :user
      t.text :description
      t.references :series_temp, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
