class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :country
      t.string :type

      t.timestamps
    end
  end
end
