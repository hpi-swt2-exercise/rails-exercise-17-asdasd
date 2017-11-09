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

  it "should have a link to the paper detail page" do

    paper = FactoryGirl.create :paper

    visit papers_path
    expect(page).to have_css("a", :text => "Show")

  end

  it "should have a link to the paper edit page" do

    paper = FactoryGirl.create :paper

    visit papers_path
    expect(page).to have_css("a", :text => "Edit")

  end

  it "should have a link to delete the paper" do

    paper = FactoryGirl.create :paper

    visit papers_path
    expect(page).to have_css("a", :text => "Destroy")

    click_on 'Destroy'

  end

  it "should be able to filter by year" do

    paper = FactoryGirl.create :paper
    visit papers_path+"?year=#{paper.year+1}"

    expect(page).not_to have_text(paper.title)

  end

end