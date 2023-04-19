class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.references :artist, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true
      t.string :title
      t.string :genre
      t.integer :year
      t.integer :decade
      t.integer :pos20
      t.integer :pos40
      t.integer :pos80
      t.integer :pos16
      t.integer :pos32

      t.timestamps
    end
  end
end
