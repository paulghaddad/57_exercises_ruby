require "./tax_calculator"

def main
  user_input

  tax_calculator = create_calculator

  puts tax_calculator.summary
end

def user_input
  print "What is the order amount? "
  @subtotal = gets.chomp.to_f

  print "What is the state "
  @state = gets.chomp.to_sym
end

def create_calculator
  TaxCalculator.new(subtotal: @subtotal, state: @state)
end

main
