class Artist < ApplicationRecord
  has_many :songs
  has_one_attached :photo

  validates :name, :country, :artist_type, presence: true
  validates :name, uniqueness: true
end
