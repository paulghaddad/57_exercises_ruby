class PizzaCalculator
  attr_reader :people, :pizzas

  SLICES_PER_PIZZA = 8

  def initialize(people:, pizzas:)
    @people = people
    @pizzas = pizzas
  end

  def slices_per_person
    slices / people
  end

  def slices_remaining
    slices % people
  end

  private

  def slices
    pizzas * SLICES_PER_PIZZA
  end
end
