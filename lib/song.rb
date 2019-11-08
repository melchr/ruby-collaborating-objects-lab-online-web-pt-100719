class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(song_name)
    @name = song_name
    @@all << self
  end

  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
  info = 
  name = filename.split(" - ")
  self.new(name)
  
  end
  
  def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  artist.add_song(self)
  end
  
end