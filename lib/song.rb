class Song
  attr_reader :name, :artist, :genres

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  end

end
