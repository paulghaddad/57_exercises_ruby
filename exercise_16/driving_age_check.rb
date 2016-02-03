class DrivingAgeCheck
  attr_reader :age

  LEGAL_DRIVING_AGE = 16

  def initialize(age:)
    @age = age
  end

  def legal_driver?
    age >= LEGAL_DRIVING_AGE
  end
end
