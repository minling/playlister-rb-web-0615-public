# code artist here
class Artist 
  attr_accessor :name, :songs, :genres

  @@artists = []

  def initialize
    @name = name
    @songs = []
    @genres = []
    @@artists << self
  end

  def add_song(song)
    @songs << song
    @genres << song.genre 
    if (song.genre && !song.genre.artists.include?(self))
      song.genre.artists << self
    end
  end

  def self.reset_artists
    self.all.clear
  end

  def self.all
    @@artists
  end

  def self.count
    @@artists.count
  end

end