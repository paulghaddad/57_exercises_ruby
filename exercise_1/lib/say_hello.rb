def greeting(name)
  "Hello, #{name}, nice to meet you!"
end

def main
  print "What is your name? "
  name = STDIN.gets.chomp
  puts greeting(name)
end

main
