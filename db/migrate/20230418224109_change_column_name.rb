class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
      rename_column :artists, :type, :artist_type
  end
end
