word = "abcdefghijklmnopqrstuvwxyz"
letter_array = word.split("")

number = 0
characters_list = {}
letter_array.each do |index|
  index
  number += 1
  number
  characters_list[index.upcase] = number
  
end

p characters_list