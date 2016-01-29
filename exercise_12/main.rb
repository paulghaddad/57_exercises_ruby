require "./interest_calculator"

def main
  user_input

  interest_calculator = InterestCalculator.new(principal: @principal, rate: @rate, time: @time)

  puts interest_calculator.summary
end

def user_input
  print "What is the principal: "
  @principal = gets.chomp.to_f

  print "Enter the rate of interest: "
  @rate = gets.chomp.to_f

  print "Enter the number of years: "
  @time = gets.chomp.to_f
end

main
