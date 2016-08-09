class Artist
  attr_accessor :name
  attr_reader :songs, :genres

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def add_song(song)
    @songs << song
  end

  def genres
    @songs.each do |song|
      @genres << song.genre
    end
    @genres
  end

end