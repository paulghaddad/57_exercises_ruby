require "./temperature_converter"

def main
  user_input
  @converter = TemperatureConverter.new
  convert_temperature
end

def user_input
  loop do
    user_prompt
    print "Your choice: "
    @unit = gets.chomp.downcase
    break if valid_input?
  end
end

def user_prompt
  puts "Press C to convert from Fahrenheit to Celsius."
  puts "Press F to convert from Celsius to Fahrenheit."
end

def valid_input?
  @unit.downcase =~ /f|c/
end

def convert_temperature
  if @unit == "f"
    celsius_to_fahrenheit
  else
    fahrenheit_to_celsius
  end
end

def celsius_to_fahrenheit
  print "Please enter the temperature in Fahrenheit: "
  temperature = gets.chomp.to_i
  converted_temperature = @converter.celsius_to_fahrenheit(temperature)
  puts "The temperature in Celsius is #{converted_temperature}"
end

def fahrenheit_to_celsius
  print "Please enter the temperature in Celsius: "
  temperature = gets.chomp.to_i
  converted_temperature = @converter.fahrenheit_to_celsius(temperature)
  puts "The temperature in Fahrenheit is #{converted_temperature}"
end

def summary
  "The temperature in Celsius is 0."
end
main
