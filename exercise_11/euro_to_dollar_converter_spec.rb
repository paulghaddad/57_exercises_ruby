require "./euro_to_dollar_converter"

describe EuroToDollarConverter do
  describe "#euros_to_dollars" do
    it "converts Euros to Dollars" do
      euros = 81
      exchange_rate = 137.51
      converter = EuroToDollarConverter.new(euros: euros, exchange_rate: exchange_rate)

      dollars = converter.euros_to_dollars

      expect(dollars).to eq(111.38)
    end
  end
end
