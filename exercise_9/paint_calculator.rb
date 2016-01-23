class PaintCalculator
  attr_reader :surface_area

  PAINT_COVERAGE = 350 # square feet per gallon

  def initialize(surface_area:)
    @surface_area = surface_area.to_f
  end

  def gallons_required
    (surface_area / PAINT_COVERAGE).ceil
  end
end
