require 'pry'
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
    if out == songs[i] || out.to_i == i+1
      puts "Playing #{e}"
    else
      puts "Invalid input, please try again"
    end 
  end 
end 


def exit_jukebox
  puts "Goodbye"
end 


def run 

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
  help 
  puts "Please enter a command:"
  response = gets.chomp
  until response == "exit"
    response = gets.chomp
    case response
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
        break
      end
    end
end