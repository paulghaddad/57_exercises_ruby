class GenderInputError < ArgumentError
  def initialize(message = "Please enter male or female.")
    super
  end
end
