require "./say_hello"

def main
  print "What is your name? "
  name = gets.chomp

  puts greeting(name)
end

def greeting(name)
  SayHello.greeting(name)
end

main
