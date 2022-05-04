require "counter"

RSpec.describe Counter do
  it "Initially reports a count of zero" do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far."
  end

  it "increments the counter" do
    counter = Counter.new()
    counter.add(5)
    result = counter.report()
    expect(result).to eq "Counted to 5 so far."
  end
end 
