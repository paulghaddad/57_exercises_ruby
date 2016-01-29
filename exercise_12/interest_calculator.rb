class InterestCalculator
  attr_reader :principal, :rate, :time

  def initialize(principal:, rate:, time:)
    @principal = principal
    @rate = rate / 100
    @time = time
  end

  def amount
    principal * (1 + rate * time)
  end

  def summary
    "After #{time} years at #{rate * 100}%, the investment will be worth $#{amount.round}."
  end
end
