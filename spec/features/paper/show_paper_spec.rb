require 'rails_helper'

describe "Show paper page", type: :feature do

  it "Should display the paper title" do

    paper = FactoryGirl.create :paper

    visit paper_path(paper)

    expect(page).to have_text(paper.title)

  end

  it "should display the author names" do

    paper = FactoryGirl.create :paper

    visit paper_path(paper)

    puts paper.authors.inspect

    expect(page).to have_text(paper.authors.first.name)

  end
end