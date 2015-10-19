def main
  puts character_count(user_input)
end

def user_input
  while true
    print "What is the input string? "
    user_input = gets.chomp
    return user_input if user_input.length > 0
  end
end

def character_count(input)
  "#{input} has #{input.length} characters."
end

main
