class Artist < ApplicationRecord
  has_many :albums
  has_many :songs
  has_one_attached :photo

  validates :name, :country, :type, presence: true
end
