class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_reader :artist, :genre, :name

  def initialize(name, artist, genre)

    @@count += 1
    #self.genres(genre)
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
     @@artists.uniq
  end

  def self.genres
    @@genres.uniq

  end

  def self.genre_count

    @@genres.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }

  end

  def self.artist_count

    @@artists.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  end


end
