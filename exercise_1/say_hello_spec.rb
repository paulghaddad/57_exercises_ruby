require "./say_hello"

describe SayHello do

  it "greets you" do
    name = "Paul"

    statement = SayHello.greeting(name)

    expect(statement).to eq("Hello, Paul, nice to meet you!")
  end
end
