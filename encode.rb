require 'pry'

def encode(string)
  count = 0
  alphabet = "abcdefghijflmnopqrstuvwxyz"
  new_string = ''
  while count < string.length
    letter = string[count]
    new_letter_index = alphabet.index(letter) + 5
    if new_letter_index >= 25
      new_letter_index = new_letter_index - 25
    end
    new_letter = alphabet[new_letter_index]
    new_string << new_letter
    count += 1
  end
  print new_string
end

encode("string")

#Write a decode method
