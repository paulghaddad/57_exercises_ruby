def main
  print "What is your name? "
  name = gets.chomp
  puts greeting(name)
end

def greeting(name)
  "Hello, #{name}, nice to meet you!"
end

main
