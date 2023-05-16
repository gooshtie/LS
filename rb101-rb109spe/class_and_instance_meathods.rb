# Locate the ruby documentation for methods File::path and File#path. How are they different?

# Class methods are called on the class, while instance methods are called on objects.

puts File.path('bin')    # calls the class method File::path since we're calling it on the File class, while:



f = File.new('my-file.txt')     # calls the instance method File#path since we're calling it on an object of the File class, namely f.
puts f.path