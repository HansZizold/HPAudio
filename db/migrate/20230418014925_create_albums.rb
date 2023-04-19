class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :title
      t.integer :year

      t.timestamps
    end
  end
end
