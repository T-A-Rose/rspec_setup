require "present"

RSpec.describe(Present) do
  context "When wrapped present" do
    it "fail" do
      test_var = Present.new()
      test_var.wrap("num")
      expect {test_var.wrap("test")}.to raise_error(RuntimeError, "A contents has already been wrapped.")
    end
  end
  
  context "When unwrapped present" do
    it "fail" do
      present = Present.new()
      expect {present.unwrap()}.to raise_error(RuntimeError, "No contents have been wrapped.")
    end
  end

  context "Wrap / Unwrap a present successfully" do
    it "returns the content of a present" do
      present = Present.new()
      present.wrap("Jinx")
      expect(present.unwrap).to eq "Jinx"
    end
  end

end