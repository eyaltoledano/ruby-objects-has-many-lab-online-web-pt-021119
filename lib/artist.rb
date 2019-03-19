class Artist
  attr_accessor :name, :songs
  @@songs = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
    @@songs << song
    song
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
