require "./euro_to_dollar_converter"

def main
  @euros = get_number_of_euros
  @exchange_rate = get_exchange_rate

  calculator = EuroToDollarConverter.new(euros: @euros, exchange_rate: @exchange_rate)

  @dollars = calculator.euros_to_dollars

  puts summary
end

def get_number_of_euros
  print "How many Euros are you exchanging? "
  gets.chomp.to_f
end

def get_exchange_rate
  print "What is the exchange rate? "
  gets.chomp.to_f
end

def summary
  "#{@euros} Euros at an exchange rate of #{@exchange_rate} is #{@dollars}."
end

main
