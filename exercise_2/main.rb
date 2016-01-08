require "./count_characters"

def statement(phrase)
  CountCharacters.statement(phrase)
end

def main
  print "What is the input string? "
  input = gets.chomp
  puts statement(input)
end

main
