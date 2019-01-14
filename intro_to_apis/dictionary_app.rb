require 'http'

system "clear"

width = 80

puts "Welcome to the Dictionary App".center(width)
puts "_" * width
puts ""

print "Enter a word: "
input_word = gets.chomp
puts ""

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{input_word}/definitions?limit=10&includeRelated=false&useCanonical=false&includeTags=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")

response_example = HTTP.get("https://api.wordnik.com/v4/word.json/#{input_word}/topExample?useCanonical=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")

response_pronunciation = HTTP.get("https://api.wordnik.com/v4/word.json/#{input_word}/pronunciations?useCanonical=false&limit=50&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")

definitions = response.parse
example = response_example.parse
pronunciation = response_pronunciation.parse

puts "=" *width
puts ""
puts example["word"].upcase
puts
puts "Definition:"
puts ""


list_number = 1

definitions.each do |definition|
  puts "   #{list_number} - #{definition["text"]}"
  puts ""

  list_number += 1
end

puts "=" *width
puts ""
puts "The top example for #{example["word"]} is:"
puts ""
puts "   #{example["text"]}"
puts ""


puts "=" *width
puts ""
puts "How to pronounce #{example["word"]}:"
puts ""



pronunciation.each do |pronunciation|
  puts "  •#{pronunciation["raw"]}"
  puts ""
end