require 'http'

system "clear"

puts "welcome to the Dictionary App"
puts""

print "Enter a word: "
input_word = gets.chomp

puts ""

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{input_word}/definitions?limit=10&includeRelated=false&useCanonical=false&includeTags=false&api_key=
")

definitions = response.parse

list_number = 1

definitions.each do |definition|
  puts "#{list_number} #{definition["text"]}"
end