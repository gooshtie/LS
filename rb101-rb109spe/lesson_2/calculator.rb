# PSEUDO-CODE
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

number1 = ''
number2 = ''
name = ''
operator = ''

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_tomessage(opr)
  case opr
    when '1'
      'Adding'
    when '2'
      'Subtracting'
    when '3'
      'Multiplying'
    when '4'
      'Dividing'
  end
end

prompt('Welcome to calculator! Enter your name:')

loop do 
    name = Kernel.gets().chomp()
    if name.empty?()
        prompt('Make sure to use a valid name.')
    else
        break
    end
end

prompt("Hi #{name}!")

loop do # MAIN LOOP
    
    loop do
        prompt('Please enter a number:')

        number1 = Kernel.gets().chomp()
        if valid_number?(number1)
            break
        else
            prompt("Hmm... that doesn't look like a valid number.")
        end
    end

    loop do
        prompt('Please enter a second number:')
    
        number2 = Kernel.gets().chomp()    
        if valid_number?(number2)
            break
        else
            prompt("Hmm... that doesn't look like a valid number.")
        end
    end

    operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
    MSG

    prompt(operator_prompt)
    
    loop do
        operator = Kernel.gets().chomp()

        if %w(1 2 3 4).include?(operator)
            break
        else
            prompt("Must choose 1, 2, 3, 4")
        end
    end

    prompt("#{operation_tomessage(operator)} the two numbers")
    
    result = 

    case operator
    when '1'
        number1.to_i() + number2.to_i()
    when '2'
        number1.to_i() - number2.to_i()
    when '3'
        result = number1.to_i() * number2.to_i()
    when '4'
        result = number1.to_i() / number2.to_f()
    end

    prompt("The result is #{result}")

    prompt('Do you want to perform another calculation?')

    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
end

# given two numbers, add the together and return sum.
# get number one
# get number two
# add numbers together
# return sum

# array = [multiple strings]
# takes array and concatenates string together
# return concatenated string

# if operator == '1'
#     result = number1.to_i() + number2.to_i()
# elsif operator == '2'
#     result = number1.to_i() - number2.to_i()
# elsif operator == '3'
#     result = number1.to_i() * number2.to_i()
# else result == '4'
#     result = number1.to_f() / number2.to_f()
# end
