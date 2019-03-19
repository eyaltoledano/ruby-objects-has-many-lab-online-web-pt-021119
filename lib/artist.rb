require 'pry'

class Artist

  attr_accessor :name, :songs

  @@songs = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    the_song = song
    the_song.artist = self
    @@songs << the_song
    the_song
  end

  def songs
    @@songs
  end

  def add_song_by_name(name)
    song = add_song(Song.new)
    song.name = name
  end

  def self.song_count
    @@songs.count
  end
end
