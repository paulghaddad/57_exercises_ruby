require "./compound_interest_calculator"

describe CompoundInterestCalculator do

  describe "#compounded_amount" do
    it "calculates the interest and principle compounded over time" do
      principal_amount = 1500
      rate = 4.3
      years = 6
      compound_frequency = 4
      calculator = CompoundInterestCalculator.new(
                      principal: principal_amount,
                      rate: rate,
                      years: years,
                      compound_frequency: compound_frequency)

      compounded_amount = calculator.compounded_amount

      expect(compounded_amount).to be_within(1.0).of(1938.24)
    end
  end

  describe "#summary" do
    it "summarizes the compound interest rate calculation" do
      calculator = create_calculator

      summary = calculator.summary

      expect(summary).to eq("$1500 invested at 4.3% for 6 years compounded 4 times per year is $1938.84.")
    end
  end

  private

  def create_calculator
      principal_amount = 1500
      rate = 4.3
      years = 6
      compound_frequency = 4
      CompoundInterestCalculator.new(
                      principal: principal_amount,
                      rate: rate,
                      years: years,
                      compound_frequency: compound_frequency)

  end
end
