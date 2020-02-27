# responses = []
# print "Please name your 5 favorite foods:"
# 5.times do
#   response = gets.chomp
#   responses << response
# end
# # p responses
# i = 1
# responses.each do |response|
#   puts "#{i}. #{response}"
#   i += 1
# end

# count = 0
# while count <= 10
#   p count
#   count += 1
# end

recipes = ["pizza", "pasta", "salad", "lasagna"]

p recipes

langauges = ["english", "chinese", "hebrew", "italian"]

p langauges

# if sam_recipes.count > 10 && sally_langauges.count > 5
#   p "Sam and Sally you are a match."
# else
#   p "You are not a match."
# end

if sam_recipes.include?("pasta".capitalize) || sally_langauges.include?("Italian".downcase)
  p "Sam and Sally you should get married."
else
  p "You should not marry."
end