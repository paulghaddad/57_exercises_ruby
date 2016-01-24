class Register
  attr_accessor :subtotal
  attr_reader :tax_rate

  TAX_RATE = 0.055

  def initialize(tax_rate: TAX_RATE)
    @subtotal = 0.00
    @tax_rate = tax_rate
  end

  def checkout_item(price: , quantity: 1)
    @subtotal += price * quantity
  end

  def tax
    subtotal * tax_rate
  end

  def total
    subtotal + tax
  end
end
