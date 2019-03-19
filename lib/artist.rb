require 'pry'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    binding.pry
    the_song = song
    the_song.name = song.name
    the_song.artist = self.name
    @songs << the_song
  end

  def songs
    @songs
  end

  def add_song_by_name
  end

  def self.song_count
  end
end
