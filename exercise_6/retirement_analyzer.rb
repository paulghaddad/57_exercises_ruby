require "date"

class RetirementAnalyzer
  attr_reader :current_age, :desired_retirement_age

  def initialize(current_age:, desired_retirement_age: 65)
    @current_age = current_age
    @desired_retirement_age = desired_retirement_age
  end

  def years_to_retirement
    desired_retirement_age - current_age
  end

  def retirement_year
    current_year = Date.today.year
    current_year + years_to_retirement
  end
end
