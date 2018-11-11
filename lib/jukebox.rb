songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  counter = 0
  songs.each_with_index do |e,i|
    puts "#{i + 1}. #{e}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  out = gets.chomp
  songs.each_with_index do |e,i|
    if out == songs[i + 1]
      puts "#{e}"
    end 
  end 
end 