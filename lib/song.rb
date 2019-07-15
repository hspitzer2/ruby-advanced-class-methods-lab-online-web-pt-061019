require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  # def initialize(name)
  #   @name = name
  #   self.class.all << self
  # end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
     song = self.new
     song.save
     song
   end

  def self.new_by_name(name)
    songs = self.new
    songs.name = name
    songs
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    # @@all<< song.save
    song
  end

  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
      self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical
    self.all.sort_by { |song| song.name }

   end


   def self.new_from_filename(name)
     song = self.new
     song.name = (name.split(" - ")[1].chomp(".mp3"))
     song.artist_name = (name.split(" - ")[0])
     song
   end

   def self.create_from_filename(name)
     song = self.new
     song.save
     song.name = (name.split(" - ")[1].chomp(".mp3"))
     song.artist_name = (name.split(" - ")[0])
     song
   end
end
   def destroy_all
    self.all.cleear    
   end
