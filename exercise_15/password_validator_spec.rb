require "./password_validator"

describe PasswordValidator do
  describe "#valid_password?" do
    it "validates a correct password" do
      correct_password = "Password1"
      entered_password = "Password1"
      validator = PasswordValidator.new(password: correct_password)

      validate_password = validator.valid_password?(entered_password)
      expect(validate_password).to be_truthy
    end

    it "invalidates an incorrect password" do
      incorrect_password = "Password1"
      entered_password = "Password2"
      validator = PasswordValidator.new(password: incorrect_password)

      validate_password = validator.valid_password?(entered_password)
      expect(validate_password).to be_falsey
    end

    it "is case sensitive" do
      correct_password = "Password1"
      entered_password = "password1"
      validator = PasswordValidator.new(password: correct_password)

      validate_password = validator.valid_password?(entered_password)
      expect(validate_password).to be_falsey
    end
  end
end
