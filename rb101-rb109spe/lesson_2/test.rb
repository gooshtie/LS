
greet = 'Hey!'

def replace(str, value)
  loop do
    str = value
    break
  end
  return value
end

greet = replace(greet, 'Hello')
puts greet
