class Song
    attr_accessor :name, :artist
    @@all = []
    

    def initialize(name)
        @name = name
        @@all << self
        
    end

    def artist=(artist)
        @artist = artist
        artist.songs << self
        
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist ? self.artist.name : nil
    end

end