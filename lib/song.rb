require 'pry'
class Song
  attr_accessor :name, :artist_name, :song
  @@all = []



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
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all<< song.save
    song
  end

  def self.find_by_name(name)
    @@all.map do |name|
      result = song if song.name == name
      result
    end
  end

  def self.find_or_create_by_name(name)
      self.find_by_name(name) || self.create_by_name(name)
   end
 end

  def self.alphabetical
    @@all.sort_by { |songs| a <=> b }
    puts song
   end

  #  def self.new_from_filename
   #
  #  end
   #
  #  def self.create_from_filename
   #
  #  end

  #  def destroy_all
  #    @@all.clear
  #       @@all = []
  #  end
# end
