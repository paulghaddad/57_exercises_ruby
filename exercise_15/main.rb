require "./password_validator"

def main
  correct_password= "abc$123"
  @password_validator = PasswordValidator.new(password: correct_password)

  entered_password = user_input

  puts validate_password(entered_password)
end

def user_input
  print "What is the password? "
  gets.chomp
end

def validate_password(entered_password)
  if correct_password?(entered_password)
    "Welcome!"
  else
    "That password is incorrect."
  end
end

def correct_password?(entered_password)
  @password_validator.valid_password?(entered_password)
end

main
