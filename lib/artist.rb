class Artist
    attr_accessor :name, :songs

    @songs = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        Song.all.size
    end

    
end