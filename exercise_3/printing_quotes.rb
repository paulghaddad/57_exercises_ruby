def print_quote(quote, author)
  author + " says, \"" + quote + "\""
end

def main
  puts "What is the quote?"
  quote = gets.chomp
  puts "Who said it?"
  author = gets.chomp
end

main
