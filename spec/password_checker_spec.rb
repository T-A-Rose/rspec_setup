require "password_checker"

RSpec.describe(PasswordChecker) do
  context "It checks the password is < 8 characters" do
    it "fails" do
      p_word = PasswordChecker.new()
      expect { p_word.check("test") }.to raise_error(RuntimeError, "Invalid password, must be 8+ characters.")
    end
  end

  context "it checks the password is >= 8 characters" do
    it "passes" do
      p_word = PasswordChecker.new()
      expect(p_word.check("whatever password you want")).to eq true
    end

    it "passes" do
      p_word = PasswordChecker.new()
      expect(p_word.check(12345678)).to eq true
    end
  end
end
