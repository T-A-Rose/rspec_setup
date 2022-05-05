require "reminder"

RSpec.describe(Reminder) do
  context "When no task is set" do
    it "fails" do
      reminder = Reminder.new("Tom")
      expect {reminder.remind() }.to raise_error "No reminder set!"
    end
  end
end
