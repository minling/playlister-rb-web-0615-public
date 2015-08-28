require 'pry'
class Genre
  attr_accessor :name, :songs, :artists

  @@genres = []

  def initialize
  @name = name
  @songs = []
  @artists = []
  @@genres << self 
  end

  def self.reset_genres
    self.all.clear
  end

  def self.all
    @@genres
  end

  def self.count
    @@genres.count
  end


end