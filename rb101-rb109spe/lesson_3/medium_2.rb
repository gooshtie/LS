# #1

# puts a.object_id # 60
# puts b.object_id # 80
# puts c.object_id # 60

#2

# All the same because integers are immutaqble

#3

# String_one looks like this now: pumpkins
# String_two looks like this now: pumpkinsrutabaga


#4

# My string looks like this now: pumpkinsrutabaga
# My array looks like this now: ["pumpkins"]


#5

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"