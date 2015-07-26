# U2.W6: Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode
# class Song
#   play method - puts to screen playing
# end

# class Playlist
#   add method - adds song to existing list, 1 arg
#   num_of_tracks method - returns number in list
#   remove method - removes selected song from list, 1 arg
#   play_all method - puts to screen playing all songs in list
#   display method - displays on songs in list
# end

# Initial Solution
class Song
  attr_accessor :title, :author
  def initialize(title,author)
    @title = title
    @author = author
  end
  def play
    puts "playing #{self.title} by #{self.author}"
  end
end

class Playlist
  attr_reader :titles_list
  def initialize(*titles)
    @titles_list=[]
    titles.each{|song|
      @titles_list.push(song.title)
    }
  end
  def add(*adding_song)
    adding_song.each { |song|
      @titles_list.push(song.title)
    }
  end
  def num_of_tracks
    @titles_list.length
  end
  def remove(*removing_song)
    removing_song.each { |song|
      @titles_list.delete(song.title)
    }
  end
  def includes? search_song
    self.titles_list.include? search_song.title
  end
  def play_all
    puts "playing #{titles_list.join(",")}"
  end
  def display
    puts @titles_list
  end
end
# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
p my_playlist.titles_list == ["One by One","World So Cold","Going Under"]

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.titles_list == ["One by One","World So Cold","Going Under","Lying From You","Angels"]

p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.titles_list == ["One by One","World So Cold","Going Under","Lying From You"]
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

# Reflection
# I liked this challenge in that I had to really understand how class objects work. I had some trouble trying to print certain values to the console before I realized I was printing the object and needed an accessor to print the actual instance variable in the object. This definitely helped my overall understanding of classes and how their used. One of my favorite challenges.