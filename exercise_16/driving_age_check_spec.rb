require "./driving_age_check"

describe DrivingAgeCheck do
  describe "#legal_driver?" do
    it "returns true if the driver is older than the legal driving age" do
      age = 20
      age_checker = create_age_checker(age: age)

      expect(age_checker.legal_driver?).to be_truthy
    end

    it "returns true if the driver is the legal driving age" do
      age = 16
      age_checker = create_age_checker(age: age)

      expect(age_checker.legal_driver?).to be_truthy
    end

    it "returns true if the driver is younger than the legal driving age" do
      age = 15
      age_checker = create_age_checker(age: age)

      expect(age_checker.legal_driver?).to be_falsey
    end
  end

  private

  def create_age_checker(age:)
    DrivingAgeCheck.new(age: age)
  end
end
