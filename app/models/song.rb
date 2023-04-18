class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album

  validates :title, :genre, :year, presence: true
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
