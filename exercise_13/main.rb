require "./compound_interest_calculator"

def main
  user_input
  interest_rate_calculator
  summary
end

def user_input
  print "What is the principal amount? "
  @principal = gets.chomp.to_f

  print "What is the rate? "
  @rate = gets.chomp.to_f

  print "What is the number of years "
  @years = gets.chomp.to_i

  print "What is the number of times the interest is compounded per year? "
  @frequency = gets.chomp.to_i
end

def interest_rate_calculator
  @calculator = CompoundInterestCalculator.new(
    principal: @principal,
    rate: @rate,
    years: @years,
    compound_frequency: @frequency)
end

def summary
  puts @calculator.summary
end

main
