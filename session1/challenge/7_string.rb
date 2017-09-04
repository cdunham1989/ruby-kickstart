# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  new_string = ""

  (string.size-1).times do |index|
    current_character = string[index]
    next_character = string[index + 1]

    new_string << next_character if (current_character == "r" || current_character == "R")
  end
  new_string
end
