require 'greet'

RSpec.describe "greet method" do
  it "greets the user based on the parameter" do
    result = greet("Tom")
    expect(result).to eq "Hello, Tom!"
  end
end