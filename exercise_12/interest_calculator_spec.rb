require "./interest_calculator"

describe InterestCalculator do
  describe "#amount" do
    it "returns the amount accrued" do
      principal = 1500
      rate = 4.3
      years = 4
      calculator = InterestCalculator.new(principal: principal, rate: rate, time: years)

      amount_accrued = calculator.amount

      expect(amount_accrued).to eq(1758)
    end
  end

  describe "#summary" do
    it "prints a summary of the calculation" do
      calculator = create_calculator

      summary = calculator.summary

      expect(summary).to eq("After 4 years at 4.3%, the investment will be worth $1758.")
    end
  end

  private

  def create_calculator(principal: 1500, rate: 4.3, time: 4)
    InterestCalculator.new(principal: principal, rate: rate, time: time)
  end
end
