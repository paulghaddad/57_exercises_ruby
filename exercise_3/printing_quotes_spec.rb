require "./printing_quotes"

describe "#print_quote" do
  it "should print the quote with the author" do
    quote = "This is the quote."
    author = "Paul Haddad"

    expect(print_quote(quote, author)).to eq("Paul Haddad says, \"This is the quote.\"")
  end
end
