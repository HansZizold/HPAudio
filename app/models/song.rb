class Song < ApplicationRecord
  belongs_to :artist
  
  before_save :set_decade
  after_save :update_artist_points
  
  validates :title, :genre, :year, :album, presence: true
  validates :title, uniqueness: { scope: :artist_id }
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 1000, less_than_or_equal_to: 3000 }
  

  private
  
  def set_decade
    self.decade = year - (year % 10)
  end

  def update_artist_points
    artist.update(points: artist.points + 21 - pos20.to_i) if artist.present?
  end  
end
