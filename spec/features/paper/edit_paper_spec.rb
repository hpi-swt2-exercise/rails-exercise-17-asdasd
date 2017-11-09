require 'rails_helper'

describe "Edit paper page", type: :feature do

  it "should render" do
    paper = FactoryGirl.create :paper
    visit edit_paper_path(paper)
  end

  it "should save changes for a given paper" do
    paper = FactoryGirl.create :paper
    visit edit_paper_path(paper)

    fill_in "paper_title", :with => paper.title
    fill_in "paper_venue", :with => 'Mind 49'
    fill_in "paper_year", :with => paper.year
    find('input[type="submit"]').click
  end

  it "should have select with author options" do

    paper = FactoryGirl.create :paper
    visit edit_paper_path(paper)

    expect(page).to have_css("label", :text => "Author 1")
  end

end