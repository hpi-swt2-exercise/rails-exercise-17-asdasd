require 'rails_helper'

RSpec.describe Author, type: :model do

  it "should create instance" do

    author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")

  end

  it "a.full_name should display full name" do

      author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
      expect(author.name).to eq("Alan Turing")

  end

  it "should have an empty list of papers" do

    author = Author.new
    expect(author.papers).to be_empty

  end

end
