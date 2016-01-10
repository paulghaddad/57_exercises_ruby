require "./area_calculator"

describe AreaCalculator do
  describe "#area_in_imperial_units" do
    it "returns the area in square feet" do
      length = 15 # feet
      width = 20 # feet
      calculator = AreaCalculator.new(length: length, width: width)

      area = calculator.area_in_imperial_units

      expect(area).to eq(300)
    end
  end

  describe "#area_in_metric_units" do
    it "returns the area in square meters" do
      length = 15 # feet
      width = 20 # feet
      calculator = AreaCalculator.new(length: length, width: width)

      area = calculator.area_in_metric_units

      expect(area).to be_within(0.001).of(27.871)
    end
  end
end
