require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@songs = []

  def initialize(name)
    @name = name
    
  end

  def self.all
    @@songs
  end

  def save
    self.class.all << self
  end

  def self.create
     songs = self.new
     songs.save
     songs
   end

  def self.new_by_name(name)
    songs = self.new
    songs.name = name
    songs
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all<< song.save
    song
  end

  def self.find_by_name(name)
    self.all.find{|songs| songs.name == name}
  end

  def self.find_or_create_by_name(name)
      self.find_by_name(name) || self.create_by_name(name)
   end
 end

  def self.alphabetical
    @@all.sort_by { |songs| a <=> b }
    puts song
   end

   def self.new_from_filename

     #shoud return `Taylor Swift - Blank Space.mp3`
   end

  #  def self.create_from_filename
   #
  #  end

  #  def destroy_all
    # self.all.cleear
  #    @@all.clear
  #       @@all = []
  #  end
# end
