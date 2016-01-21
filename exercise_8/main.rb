require "./pizza_calculator"

def main
  @people = get_number_of_people.to_i
  @pizzas = get_number_of_pizzas.to_i
  @pizza_calculator = PizzaCalculator.new(people: @people, pizzas: @pizzas)
  print_analysis
end

def get_number_of_people
  print "How many people? "
  gets.chomp
end

def get_number_of_pizzas
  print "How many pizzas do you have? "
  gets.chomp
end

def print_analysis
  puts "#{@people} people with #{@pizzas} pizzas."
  puts "Each person gets #{@pizza_calculator.slices_per_person} pieces of pizza."
  puts "There are #{@pizza_calculator.slices_remaining} leftover pieces."
end

main
