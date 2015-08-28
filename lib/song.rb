# code song here
class Song
  attr_accessor :name, :genre, :artist

  def initialize
  @name = name
  @artist = artist
  end

  #setting a genre
  #get genre to know about its songs
  #in spec, genre is an object, by calling genre.songs, shovel itself in
  #song.genre = genre
  def genre=(genre)
    @genre = genre
    genre.songs << self 
  end

end