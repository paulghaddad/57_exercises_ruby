require "./count_characters"

describe CountCharacters do

  describe ".statement" do
    it "outputs a sentence with the number of characters in a string" do
      string = "Paul"

      output = CountCharacters.statement(string)

      expect(output).to eq("Paul has 4 characters.")
    end
  end
end
