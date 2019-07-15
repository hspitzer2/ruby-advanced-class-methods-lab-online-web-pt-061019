require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@songs = []



  def self.all
    @@songs
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
    self.all.find{|songs| songs.name == name}
    # @@songs.map do |name|
    #   result = songs if song.name == name
    #   result
    # end
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
     song.create + song.name.filename = self.new
     filename.name = filename
     @@all<< filename.save
     filename
     #shoud return `Taylor Swift - Blank Space.mp3`
   end

  #  def self.create_from_filename
   #
  #  end

  #  def destroy_all
  #    @@all.clear
  #       @@all = []
  #  end
# end
