class PointsDefaultValues < ActiveRecord::Migration[7.0]
  def change
    change_column_default :artists, :points, 0
    change_column_default :songs, :pos20, 0
    change_column_default :songs, :pos40, 0
    change_column_default :songs, :pos80, 0
    change_column_default :songs, :pos16, 0
    change_column_default :songs, :pos32, 0
  end
end
