require 'pry'

class Song

  @@all = []

  attr_accessor :name, :artist

  def initialize(name = nil, artist = nil)
    @name = name
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    binding.pry
  end

end
