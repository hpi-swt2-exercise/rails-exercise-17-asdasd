require 'rails_helper'

describe "When an author is created with first name 'Alan', last name 'Turing', and homepage ", type: :model do
  it "should create instance" do

    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing1")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")

  end
end
