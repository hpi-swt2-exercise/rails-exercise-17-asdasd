require 'rails_helper'

describe "Index author page", type: :feature do

  it "should display authors with name and homepage" do

    author = FactoryGirl.create :author

    visit authors_path
    expect(page).to have_text(author.name)

  end

  it "should have a column titled 'Name'" do

    visit authors_path
    expect(page).to have_css("th", :text => "Name")

  end

  it "should have a link to the new author page" do

    visit authors_path
    expect(page).to have_css("a", :text => "Add author")

  end

  it "should have a link to the author detail page" do

    FactoryGirl.create :author
    visit authors_path
    expect(page).to have_css("a", :text => "Show")


  end

end