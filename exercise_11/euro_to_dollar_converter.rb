class EuroToDollarConverter
  attr_reader :euros, :exchange_rate

  CENTS_PER_DOLLAR = 100

  def initialize(euros:, exchange_rate:)
    @euros = euros
    @exchange_rate = exchange_rate
  end

  def euros_to_dollars
    (euros * exchange_rate / CENTS_PER_DOLLAR).round(2)
  end
end
