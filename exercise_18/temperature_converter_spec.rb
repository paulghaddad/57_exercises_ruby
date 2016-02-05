require "./temperature_converter"

describe TemperatureConverter do
  describe "#fahrenheit_to_celsius" do
    it "converts from Fahrenheit to Celsius" do
      temperature_f = 32
      converter = TemperatureConverter.new

      temperature_c = converter.fahrenheit_to_celsius(temperature_f)

      expect(temperature_c).to eq(0)
    end
  end

  describe "#celsius_to_fahrenheit" do
    it "converts from Celsius to Fahrenheit" do
      temperature_c = 0
      converter = TemperatureConverter.new

      temperature_f = converter.celsius_to_fahrenheit(temperature_c)

      expect(temperature_f).to eq(32)
    end
  end
end
