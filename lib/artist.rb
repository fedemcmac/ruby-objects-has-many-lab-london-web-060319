class Artist

    attr_reader :name 

   def initialize(name)
    @name = name 
    @songs = []
   end

   def songs
    @songs
   end

   def add_song(song)
    song.artist = self
    @songs << song
   end

   def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
   end
   
   def self.song_count
    Song.all.count
   end

end