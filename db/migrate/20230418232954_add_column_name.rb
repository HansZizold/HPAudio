class AddColumnName < ActiveRecord::Migration[7.0]
  def change
    add_column :artists, :points, :integer
  end
end
