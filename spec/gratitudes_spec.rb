require "gratitudes"

RSpec.describe(Gratitudes) do
  it "Listing things to be grateful for!" do
    grat_str = Gratitudes.new
    grat_str.add("Having a job")
    expect(grat_str.format).to eq "Be grateful for: Having a job"
  end

  it "To add multiple items to be grateful for!" do
    grat_str = Gratitudes.new
    grat_str.add("Being alive")
    grat_str.add("Being free")
    grat_str.add("Having love")
    expect(grat_str.format).to eq "Be grateful for: Being alive, Being free, Having love"
  end

  it "To add a number to the array and display that" do
    num_add = Gratitudes.new
    num_add.add(25)
    expect(num_add.format).to eq "Be grateful for: 25"
  end
end
