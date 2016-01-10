require "./area_calculator"

def obtain_user_input
  print "What is the length of the room in feet? "
  @length = gets.chomp.to_i

  print "What is the width of the room in feet? "
  @width = gets.chomp.to_i
end

def print_area_of_room
  puts "You entered dimensions of #{@length} feet by #{@width} feet."
  puts "The area is"
  puts "#{@calculator.area_in_imperial_units} square feet"
  puts "#{@calculator.area_in_metric_units} square meters"
end

def main
  obtain_user_input

  @calculator = AreaCalculator.new(length: @length, width: @width)

  print_area_of_room
end

main
