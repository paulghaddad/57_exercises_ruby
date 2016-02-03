require "./non_numeric_input_error"
require "./gender_input_error"
require "./blood_alcohol_calculator"

def main
  @weight = input_for_weight
  @gender = input_for_gender
  @number_of_drinks = input_for_number_of_drinks
  @hours_since_last_drink = input_for_hours_since_last_drink

  @calculator = create_blood_alcohol_calculator

  puts @calculator.bac_results
  puts @calculator.legal_to_drive_summary
end

def input_for_weight
  print "What is your body weight in pounds? "
  weight = gets.chomp
  raise NonNumericInputError unless weight =~ /\d+/
  weight.to_i
end

def input_for_gender
  print "What is your gender (male or female)? "
  gender = gets.chomp.downcase
  raise GenderInputError unless gender =~ /male|female/
  gender.to_sym
end

def input_for_number_of_drinks
  print "How many drinks have you consumed? "
  drinks_consumed = gets.chomp
  raise NonNumericInputError unless drinks_consumed =~ /\d+/
  drinks_consumed.to_i
end

def input_for_hours_since_last_drink
  print "How many hours has it been since your last drink? "
  hours_since_last_drink = gets.chomp
  raise NonNumericInputError unless hours_since_last_drink =~ /\d+/
  hours_since_last_drink.to_i
end

def create_blood_alcohol_calculator
  BloodAlcoholCalculator.new(
    alcohol_consumed: @number_of_drinks,
    body_weight: @weight,
    gender: @gender,
    hours_since_last_drink: @hours_since_last_drink)
end

main
