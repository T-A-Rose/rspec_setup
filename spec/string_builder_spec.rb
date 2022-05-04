require "string_builder"

RSpec.describe StringBuilder do
  it "Initially displays an empty string" do
    emp_str = StringBuilder.new
    expect(emp_str.output).to eq ""
  end

  it "Creates a string based on user input" do
    str_length = StringBuilder.new
    str_length.add('Hello')
    expect(str_length.output).to eq "Hello"
  end

  it "Creates a sentence based on user input" do
    sen_length = StringBuilder.new
    sen_length.add("Hello there, ")
    sen_length.add("we're testing a sentence")
    expect(sen_length.output).to eq "Hello there, we're testing a sentence"
  end

  it "Returns the length of the inputted string" do
    num_length = StringBuilder.new
    num_length.add("Testing")
    expect(num_length.size).to eq 7
  end
end