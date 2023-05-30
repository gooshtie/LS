#1 nil

# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting  #  => "hi there"
# puts greetings


#2 { a: 'hi' }


#3

# A : one is one two is two three is three
# B : one is one two is two three is three
# C : one is two two is three three is one


#4


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0  do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end


puts dot_separated_ip_address?("10.4.5.33")