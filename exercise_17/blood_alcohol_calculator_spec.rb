require "./blood_alcohol_calculator"

describe BloodAlcoholCalculator do
  describe "#blood_alcohol_content" do
    it "calculates the person's BAC" do
      calculator = create_calculator

      blood_alcohol_content = calculator.blood_alcohol_content

      expect(blood_alcohol_content).to be_within(0.01).of(0.3)
    end
  end

  describe "#bac_results" do
    context "under the limit" do
      it "reports it is legal to drive" do
        calculator = create_calculator

        expect(calculator.bac_results).to match(
          /Your BAC is #{calculator.blood_alcohol_content}./)
      end
    end
  end

  describe "#legal_to_drive_summary" do
    context "under the limit" do
      it "reports the driver is legal to drive" do
        calculator = create_calculator
        allow(calculator).to receive(:blood_alcohol_content).and_return(0.03)

        expect(calculator.legal_to_drive_summary).to match(
          /It is legal for you to drive./)
      end
    end

    context "over the limit" do
      it "reports the drive is not legal to drive" do
        calculator = create_calculator
        allow(calculator).to receive(:blood_alcohol_content).and_return(0.9)

        expect(calculator.legal_to_drive_summary).to match(
          /It is not legal for you to drive./)
      end
    end
  end

  private

  def create_calculator
      alcohol_consumed = 16
      body_weight = 180
      gender = :male
      hours_since_last_drink = 2
      BloodAlcoholCalculator.new(
        alcohol_consumed: alcohol_consumed,
        body_weight: body_weight,
        gender: gender,
        hours_since_last_drink: hours_since_last_drink)
  end
end
