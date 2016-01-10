class AreaCalculator
  attr_reader :length, :width

  IMPERIAL_TO_METRIC_AREA_CONVERSION = 0.09290304
  PRECISION = 3

  def initialize(length:, width:)
    @length = length
    @width = width
  end

  def area_in_imperial_units
   length * width
  end

  def area_in_metric_units
    (area_in_imperial_units * IMPERIAL_TO_METRIC_AREA_CONVERSION).round(PRECISION)
  end
end
