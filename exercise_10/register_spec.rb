require "./register"

describe "Register" do
  describe "#initialize" do
    it "has a subtotal of $0" do
      register = create_register

      subtotal = register.subtotal

      expect(subtotal).to eq(0.0)
    end

    it "defaults to a tax rate of 5.5%" do
      register = create_register

      expect(register).to have_attributes(subtotal: 0.0, tax_rate: 0.055)
    end
  end

  describe "#checkout_item" do
    it "adds the cost of an item to the subtotal" do
      price = 10.00
      register = create_register

      register.checkout_item(price: price)

      expect(register.subtotal).to eq(10.00)
    end

    it "adds the cost of two items to the subtotal" do
      price = 10.00
      quantity = 2
      register = create_register

      register.checkout_item(price: price, quantity: quantity)

      expect(register.subtotal).to eq(20.00)
    end
  end

  describe "#tax" do
    it "calculates the tax for a subtotal" do
      register = register_with_items(subtotal: 10.00, tax_rate: 0.1)

      tax = register.tax

      expect(tax).to eq(1.0)
    end
  end

  describe "total" do
    it "calculaters the total cost of the items in the register" do
      register = register_with_items(subtotal: 10.00, tax_rate: 0.01)
      subtotal = register.subtotal
      tax = register.tax

      total = register.total

      expect(total).to eq(subtotal + tax)
    end
  end

  private

  def create_register
    Register.new
  end

  def register_with_items(subtotal: 10.0, tax_rate: 0.01)
    register = Register.new(tax_rate: tax_rate)
    register.checkout_item(price: subtotal)
    register
  end
end
