# The program should ask the user to enter a word, then use the wordnik API to show the word’s definition: https://developer.wordnik.com/docs#!/word/getDefinitions
# top_ Once that works, have it also display the top example and pronunciation (browse through the documentation to top_the top example and pronunciation).
# Bonus: Write your program in a loop such that the user can keep entering new words without having to restart the program. Give them the option of entering q to quit.

require "http"

print "Please enter a word: "
user_input = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=b05bbefa71250039e60030a86260994d095206c2efdc555ad")

definition = response.parse[0]["text"]

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/topExample?useCanonical=false&api_key=b05bbefa71250039e60030a86260994d095206c2efdc555ad")


top_example = response.parse["text"]

puts "#{user_input} is defined as: #{definition}"
puts "The top example for #{user_input} is: #{top_example}"