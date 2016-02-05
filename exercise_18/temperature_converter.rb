class TemperatureConverter
  OFFSET = 32

  def fahrenheit_to_celsius(temperature_fahrenheit)
    (temperature_fahrenheit - OFFSET) * 5 / 9
  end

  def celsius_to_fahrenheit(temperature_celsius)
    (temperature_celsius * 9 / 5) + OFFSET
  end
end
