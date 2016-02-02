class PasswordValidator
  attr_reader :correct_password

  def initialize(password:)
    @correct_password = password
  end

  def valid_password?(password_input)
    password_input == correct_password
  end
end
