class CompoundInterestCalculator
  attr_reader :principal, :rate, :years, :compound_frequency

  def initialize(principal:, rate:, years:, compound_frequency: 1)
    @principal = principal.to_f
    @rate = rate / 100
    @years = years
    @compound_frequency = compound_frequency
  end

  def compounded_amount
    factor = (1 + rate / compound_frequency)**(compound_frequency * years)
    (principal * factor).round(2)
  end

  def summary
    "$#{principal.to_i} invested at #{rate * 100}% for #{years} years compounded #{compound_frequency} times per year is $#{compounded_amount}."
  end
end
