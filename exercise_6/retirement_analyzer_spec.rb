require "./retirement_analyzer"

describe RetirementAnalyzer do
  describe "#years_to_retirement" do
    it "calculates the number of years to retirement" do
      analyzer = RetirementAnalyzer.new(current_age: 25, desired_retirement_age: 65)

      expect(analyzer.years_to_retirement).to eq(40)
    end
  end

  describe "retirement_year" do
    it "calculates the retirement year" do
      allow(Date).to receive(:today) { Date.new(2015, 1, 1) }
      analyzer = RetirementAnalyzer.new(current_age: 25, desired_retirement_age: 65)

      expect(analyzer.retirement_year).to eq(2055)
    end
  end
end
