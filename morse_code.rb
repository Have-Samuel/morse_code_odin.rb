def decode(char)
  morse_code = {
    ".-" => "a",
    "-..." => "b",
    "-.-." => "c",
    "-.." => "d",
    "." => "e",
    "..-." => "f",
    "--." => "g",
    "...." => "h",
    ".." => "i",
    ".---" => "j",
    "-.-" => "k",
    ".-.." => "l",
    "--" => "m",
    "-." => "n",
    "---" => "o",
    ".--." => "p",
    "--.-" => "q",
    ".-." => "r",
    "..." => "s",
    "-" => "t",
    "..-" => "u",
    "...-" => "v",
    ".--" => "w",
    "-..-" => "x",
    "-.--" => "y",
    "--.." => "z"
  }
  morse_code[char].upcase
end

def decode_word(word)
  new_array = word.split(" ")
  empty_str = ""
  new_array.each do |char|
    empty_str += decode(char)
  end
  empty_str
end

p decode_word(".... . .-.. .-.. ---") # "Hello"
p decode_word("... --- ...") # "SOS"
p decode_word("-... --- -..-") # "BOX"
p decode_word("-.-. --- -.. .") # "COD"

def decode_morse(char)
  new_array = char.split(" ")
  empty_string = ""
  new_array.each do |i|
    empty_string += decode(i)
  end
  empty_string
end

puts "====================="
p decode_morse(".... . .-.. .-.. ---") # "Hello"
p decode_morse("... --- ...") # "SOS"
p decode_morse("-... --- -..-") # "BOX"
p decode_morse("-.-. --- -.. .") # "COD"