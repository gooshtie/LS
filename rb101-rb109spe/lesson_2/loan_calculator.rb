# need loan amount
# need the annual percentage rate
# need the loan duration

# calculate monthly interest rate
# calculate loan duration in months
# calculate monthly payment

# formula: m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly_payment
# p = loan_amount
# j = monthly_interest_rate
# n = loan_duration_in_months

# Welcome to loan calculator!
# what is your loan amount?
# what is your annual percentage rate?
# what is you loan duration?

# convert annual percentage to int
# convert loan duration to months
# find monthly interest rate
# calculate monthly payment

monthly_payment = ''
loan_amount = ''
annual_interest_rate = ''
monthly_interest_rate = ''
monthly_loan_duration = ''

def prompt(message)
  puts("=> #{message}")
end


loop do
  prompt('Welcome to loan calculator!')
  prompt('---------------------------')

  prompt('What is your loan amount?')
  
  loan_amount = gets.chomp
  
  if loan_amount.empty?() || loan_amount.to_f < 0
    prompt('Must enter a valid bumber.')
  else
    break
  end
end

prompt('What is your annual percentage rate?')
prompt('Enter 5 for 5% or 2.5 for 2.5%')
annual_percentage_rate = gets.chomp

loop do
  if annual_percentage_rate.empty?() || annual_percentage_rate.to_f < 0
    prompt('Must enter a valid number.')
  else
    break
  end
end

prompt('What is you loan duration?')
loan_duration = gets.chomp

loop do
  if loan_duration.empty?() || loan_duration.to_i < 0
    prompt('Must enter a valid number')
  else
    break
  end
end

annual_interest_rate = annual_percentage_rate.to_f() / 100

monthly_interest_rate = annual_interest_rate / 12

monthly_loan_duration = loan_duration.to_i() * 12

monthly_payment = loan_amount.to_f() * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-monthly_loan_duration)))

brakdown_prompt = <<-MSG

Here is a breakdown of your loan:

Loan Amount = #{loan_amount}

APR = #{annual_percentage_rate}

Loan Duration = #{loan_duration}

Your monthly payment for this loan will be $#{format('%.2f' , monthly_payment)}

MSG

prompt(brakdown_prompt)
