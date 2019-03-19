require 'pry'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    the_song = song
    the_song.artist = self
    @songs << the_song
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = add_song(Song.new)
    binding.pry
  end

  def self.song_count
  end
end
