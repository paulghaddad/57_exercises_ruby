def obtain_quote
  print "What is the quote? "
  gets.chomp
end

def obtain_author
  print "Who said it? "
  gets.chomp
end

def main
  quote = obtain_quote
  author = obtain_author

  puts "#{author} says: \"#{quote}.\""
end

main
