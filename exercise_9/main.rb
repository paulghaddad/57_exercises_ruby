require "./paint_calculator"

def main
  surface_area = ARGV.first

  validate_input(surface_area)

  calculator = PaintCalculator.new(surface_area: surface_area.to_f)
  puts calculator.gallons_required
end

def validate_input(surface_area)
  unless surface_area
    raise ArgumentError, "Must supply one command line argument: surface area to paint"
  end
end

main
