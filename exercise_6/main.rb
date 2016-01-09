require "./retirement_analyzer"

def obtain_age
  print "What is your current age? "
  gets.chomp.to_i
end

def obtain_retirement_age
  print "At what age would you like to retire? "
  gets.chomp.to_i
end

def main
  age = obtain_age
  retirement_age = obtain_retirement_age
  retirement_analyzer = RetirementAnalyzer.new(current_age: age, desired_retirement_age: retirement_age)

  puts "You have #{retirement_analyzer.years_to_retirement} years left until you can retire."
  puts "It's #{Date.today.year}, so you can retire in #{retirement_analyzer.retirement_year}."
end

main
