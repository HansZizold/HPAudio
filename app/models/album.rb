class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs
  has_one_attached :photo

  validates :title, :year, presence: true
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
