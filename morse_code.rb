def decode_morse(char)
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
    empty_str += decode_morse(char)
  end
  empty_str
end

p decode_word(".... . .-.. .-.. ---") # "Hello"
p decode_word("... --- ...") # "SOS"
p decode_word("-... --- -..-") # "BOX"
p decode_word("-.-. --- -.. .") # "COD"