class TaxCalculator
  attr_reader :subtotal, :state, :tax

  WI_TAX_RATE = 0.055
  TAXABLE_STATES = [:WI]

  def initialize(subtotal:, state:)
    @subtotal = subtotal
    @state = state
    @tax = calculate_tax || 0
  end


  def total
    subtotal + tax
  end

  def summary
    if taxable_state?
      puts "The subtotal is $#{sprintf("%.2f", subtotal)}"
      puts "The tax is $#{sprintf("%.2f", tax)}"
    end

    puts "The total is $#{sprintf("%.2f", total)}"
  end

  private

  def calculate_tax
    if taxable_state?
      subtotal * WI_TAX_RATE
    end
  end

  def taxable_state?
    TAXABLE_STATES.include?(state)
  end
end
