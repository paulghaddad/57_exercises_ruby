require "./tax_calculator"

describe TaxCalculator do
  context "taxable state" do
    describe "#subtotal" do
      it "calculates a subtotal" do
        calculator = create_tax_calculator(subtotal: 10.0, state: :WI)

        subtotal = calculator.subtotal

        expect(subtotal).to eq(10.0)
      end
    end

    describe "#tax" do
      it "calculates the tax" do
        calculator = create_tax_calculator(subtotal: 10.0, state: :WI)

        tax = calculator.tax

        expect(tax).to eq(0.55)
      end
    end

    describe "#total" do
      it "calculates the total" do
        calculator = create_tax_calculator(subtotal: 10.0, state: :WI)

        total = calculator.total

        expect(total).to eq(10.55)
      end
    end
  end

  context "non-taxable state" do
    describe "#total" do
      it "has no tax" do
        subtotal = 10.0
        calculator = create_tax_calculator(subtotal: subtotal, state: :OH)

        total = calculator.total

        expect(total).to eq(subtotal)
      end
    end
  end

  private

  def create_tax_calculator(subtotal:, state:)
    TaxCalculator.new(subtotal: subtotal, state: state)
  end
end
