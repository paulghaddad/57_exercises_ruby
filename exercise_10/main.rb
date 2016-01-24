require "./register"

def main
  @register = Register.new

  add_item_to_register(item_number: 1)
  add_item_to_register(item_number: 2)
  add_item_to_register(item_number: 3)

  print_receipt
end

def obtain_price(item_number)
  print "Enter the price of item #{item_number}: "
  gets.chomp.to_i
end

def obtain_quantity(item_number)
  print "Enter the quantity of item #{item_number}: "
  gets.chomp.to_i
end

def add_item_to_register(item_number:)
  price = obtain_price(item_number)
  quantity = obtain_quantity(item_number)
  @register.checkout_item(price: price, quantity: quantity)
end

def print_receipt
  puts "Subtotal: #{sprintf("$%.2f", @register.subtotal)}"
  puts "Tax: #{sprintf("$%.2f", @register.tax)}"
  puts "Total: #{sprintf("$%.2f", @register.total)}"
end

main
