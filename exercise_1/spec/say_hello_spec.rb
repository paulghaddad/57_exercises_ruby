require 'say_hello'

describe "#greeting" do
  it "should output a personalized greeting" do
    name = "Paul"

    expect(greeting(name)).to eq("Hello, Paul, nice to meet you!")
  end
end
