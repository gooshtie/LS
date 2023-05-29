# 1

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# puts ages.include?("Spot")
# puts ages.key?("Spot")


#2

# munsters_description = "The Munsters are creepy in a good way."

# puts munsters_description.swapcase
# puts munsters_description.capitalize
# puts munsters_description.downcase
# puts munsters_description.upcase


#3

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# ages.merge!("Marilyn" => 22, "Spot" => 237)

# ages.each {|k, v| puts "#{k} #{v}"}


#4

# advice = "Few things in life are as important as house training your pet dinosaur."

# puts advice.include?("Dino")
# advice.match?('Dino')
# advice.match?('Dino')
# # Note that this is not a perfect solution, as it would match any substring with Dino in it.


#5

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
 flintstones  = %w(Fred Barney Wilma Betty Bambam Pebbles)
# puts flintstones


#6

# # flintstones.push("Dino")
# flintstones << "Dino"
# puts flintstones


# #7

# flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
# flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item


#8

# advice = "Few things in life are as important as house training your pet dinosaur."

# puts advice.slice("Few things in life are as important as ")

# puts advice

# advice.slice!(0, advice.index('house'))  # => "Few things in life are as important as "
# p advice # => "house training your pet dinosaur."


#9

# statement = "The Flintstones Rock!"

# puts statement.count('t')