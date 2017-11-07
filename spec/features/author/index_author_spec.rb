require 'rails_helper'

describe "Index author page", type: :feature do

  it "should display authors with name and homepage" do

    author = FactoryGirl.create :author

    visit authors_path
    expect(page).to have_text(author.name)

    puts page.body

  end

  it "should have a column titled 'Name'" do

    visit authors_path
    expect(page).to have_css("th", :text => "Name")
  end

end