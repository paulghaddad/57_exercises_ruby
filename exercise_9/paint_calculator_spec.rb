require "./paint_calculator"

describe PaintCalculator do
  describe "#gallons_required" do
    context "rounding not necessary" do
      it "calculates the number of gallons of paint" do
        area = 360
        calculator = PaintCalculator.new(surface_area: area)

        gallons = calculator.gallons_required

        expect(gallons).to eq(2)
      end
    end

    context "rounding necessary" do
      it "calculates the number of gallons of paint to the next whole gallon" do
        area = 750
        calculator = PaintCalculator.new(surface_area: area)

        gallons = calculator.gallons_required

        expect(gallons).to eq(3)
      end
    end
  end
end
