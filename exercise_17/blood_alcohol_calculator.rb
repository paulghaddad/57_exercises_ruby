class BloodAlcoholCalculator
  attr_reader :alcohol_consumed, :body_weight, :gender, :hours_since_last_drink

  ALCOHOL_DISTRIBUTION_RATIO = { male: 0.73, female: 0.66 }.freeze
  LIMIT = 0.08

  def initialize(alcohol_consumed:, body_weight:, gender:,
                 hours_since_last_drink: 1)
    @alcohol_consumed = alcohol_consumed
    @body_weight = body_weight
    @gender = gender
    @hours_since_last_drink = hours_since_last_drink
  end

  def blood_alcohol_content
    (weight_factor - 0.015 * hours_since_last_drink).round(2)
  end

  def legal_to_drive_summary
    if blood_alcohol_content < LIMIT
      "It is legal for you to drive."
    else
      "It is not legal for you to drive."
    end
  end

  def bac_results
    "Your BAC is #{blood_alcohol_content}."
  end

  private

  def weight_factor
    (alcohol_consumed * 5.14 / body_weight * ALCOHOL_DISTRIBUTION_RATIO[gender])
  end
end
