require "./character_count"

describe "#character_count" do
  it "should output the character count for a string" do
    input_string = "Paul"

    expect(character_count(input_string)).to eq("Paul has 4 characters.")
  end
end
