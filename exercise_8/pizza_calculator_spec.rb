require "./pizza_calculator"

describe PizzaCalculator do
  describe "#slices_per_person" do
    it "returns the number of slices for each person in whole slices" do
      calculator = create_pizza_calculator

      slices_per_person = calculator.slices_per_person

      expect(slices_per_person).to eq(2)
    end
  end

  describe "#slices_remaining" do
    context "no leftover slices" do
      it "returns 0" do
        calculator = create_pizza_calculator

        slices_remaining = calculator.slices_remaining

        expect(slices_remaining).to eq(0)
      end
    end

    context "leftover slices" do
      it "returns the number of remaining slices" do
        calculator = create_pizza_calculator(people: 7)

        slices_remaining = calculator.slices_remaining

        expect(slices_remaining).to eq(2)
      end
    end
  end

  private

  def create_pizza_calculator(people: 8, pizzas: 2)
    PizzaCalculator.new(people: people, pizzas: pizzas)
  end
end
