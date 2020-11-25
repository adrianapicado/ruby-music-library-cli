class Genre 

    extend Concerns::Findable 

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name 
        @songs = []
    end

    def self.all 
        @@all
    end

    def self.destroy_all
        @@all.clear 
    end

    def save
        @@all << self 
    end

    def self.create(genre)
        genre = self.new(genre)
        genre.save
        genre
    end

    def songs 
        @songs
    end

    def artists
        @a_array = []
        @songs.each do |song|
          if @a_array.include?(song.artist)
            nil
          else
            @a_array << song.artist
          end
        end
        @a_array
      end

end
