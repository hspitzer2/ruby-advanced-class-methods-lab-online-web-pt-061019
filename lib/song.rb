require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
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
    self.all.find{|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
      self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical
    self.all.sort_by { |song| song.name }

   end
 end
   #
  #  def self.new_from_filename
   #
  #    #shoud return `Taylor Swift - Blank Space.mp3`
  #  end

  #  def self.create_from_filename
   #
  #  end

  #  def destroy_all
    # self.all.cleear
  #    @@all.clear
  #       @@all = []
  #  end
