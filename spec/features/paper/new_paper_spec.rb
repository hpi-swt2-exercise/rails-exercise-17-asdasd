require 'rails_helper'

describe "New paper page", type: :feature do

  it "should render withour error" do
    visit new_paper_path
  end

  it "should have text input for title, venue and year" do
    visit new_paper_path

    expect(page).to have_field('Title')
    expect(page).to have_field('Venue')
    expect(page).to have_field('Year')
  end

  it "should not validate without title" do
    visit new_paper_path

    fill_in 'paper_title', with: ''
    fill_in 'paper_venue', with: 'mind 49: 433-460'
    fill_in 'paper_year', with: 1950
    find('input[type="submit"]').click

    expect(page).to have_text("Title can't be blank")
  end

end