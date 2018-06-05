class Song

  @@count = 0
  @@artist = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |key, value|
      if genre_hash.has_key?(key)
        genre_hash(key) = genre.key(value) + 1
      else
        genre_hash.merge!(key => 0)
      end  
    end
  end

end
