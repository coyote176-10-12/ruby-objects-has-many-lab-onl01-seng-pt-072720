class Author 
  
  attr_accessor :name 
  
    def initialize(name)
      @name= name
    end
    
    def add_post(post)
      post.author= self 
    end
    
    def self.all
      @@all
    end
    
    def add_post_by_title(title)
      post= Title.new(title)
      add_title(title)
    end
    
    def posts      
    
 end 
  
  
    
    
    def add_song_by_name(name)
      song= Song.new(name)
      add_song(song)
    end
    
    def songs
    Song.all.select do |song|
      song.artist == self
      end
    end
    
    def self.song_count
      Song.all.count
    end

  end 