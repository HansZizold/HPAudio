# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create a user
user = User.find_or_create_by(name: 'Hans Zizold', email: 'hans@mail.com', role: 'admin')

# Create multiple artists using an array of data
artists_data = [
  { name: 'Madonna', country: 'USA', artist_type: 'Female Solo' },
  { name: 'The Beatles', country: 'UK', artist_type: 'Group' },
  { name: 'Pearl Jam', country: 'USA', artist_type: 'Group' },
  { name: 'A-Ha', country: 'Norway', artist_type: 'Group' }
]
artists_data.each do |artist_data|
  artist = Artist.find_or_create_by(artist_data)
end

# Create multiple songs using an array of data
songs_data = [
  { artist_id: Artist.find_by(name: 'Madonna').id, title: 'Like a Prayer', genre: 'Power Pop', year: 1989, pos20: 1, album: 'Like a Prayer' },
  { artist_id: Artist.find_by(name: 'The Beatles').id, title: 'Something', genre: 'Ballad', year: 1969, pos20: 2, album: 'Abbey Road' },
  { artist_id: Artist.find_by(name: 'Pearl Jam').id, title: 'Jeremy', genre: 'Alternative', year: 1993, pos20: 5, album: 'Ten' },
  { artist_id: Artist.find_by(name: 'A-Ha').id, title: 'Take On Me', genre: 'Power Pop', year: 1985, pos20: 3, album: 'Hunting High and Low' }
]
songs_data.each do |song_data|
  song = Song.find_or_create_by(song_data)
end
