require "./driving_age_check"

ILLEGAL_DRIVER_MESSAGE = "You are not old enough to legally drive".freeze
LEGAL_DRIVER_MESSAGE = "You are old enough to legally driver".freeze

def main
  age = get_age

  age_check = DrivingAgeCheck.new(age: age)

  puts driving_age_message(age_check)
end

def get_age
  print "What is your age? "
  gets.chomp.to_i
end

def driving_age_message(age_check)
  age_check.legal_driver? ? LEGAL_DRIVER_MESSAGE : ILLEGAL_DRIVER_MESSAGE
end

main
