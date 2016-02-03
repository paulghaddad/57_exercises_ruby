class NonNumericInputError < ArgumentError
  def initialize(message = "Please enter a numeric value")
    super
  end
end
