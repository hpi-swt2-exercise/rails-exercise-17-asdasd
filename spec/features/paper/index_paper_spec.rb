require 'rails_helper'

describe "Index paper page", type: :feature do

  it "should display papers with title" do

    paper = FactoryGirl.create :paper

    visit papers_path
    expect(page).to have_text(paper.title)

  end

  it "should have a link to the new paper page" do

    visit papers_path
    expect(page).to have_css("a", :text => "Add paper")

  end

end