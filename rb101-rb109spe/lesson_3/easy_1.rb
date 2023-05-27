# 3

# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.gsub!('important', 'urgent')

# puts advice


# 4

# numbers = [1, 2, 3, 4, 5]

# numbers.delete_at(1) # will delete object at position 1

# numbers = [1, 2, 3, 4, 5]

# numbers.delete(1) # will delete object 1


# 5

# puts (10..100).include?(42)
# (10..100).cover?(42)


# 6

# famous_words = "seven years ago..."
# famous_words_beginning = "Four score and "

# puts famous_words_beginning + famous_words
# puts famous_words.insert(0, famous_words_beginning)
# "Four score and " + famous_words
# famous_words.prepend("Four score and ")
# "Four score and " << famous_words


# 7

# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# puts (flintstones.flatten)
# flintstones.flatten!


# 8

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# puts flintstones.assoc("Barney")