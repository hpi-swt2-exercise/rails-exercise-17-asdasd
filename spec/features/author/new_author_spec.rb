require 'rails_helper'

describe "New author page", type: :feature do

  it "should render withour error" do
    visit new_author_path
  end

  it "should have text input for first name, last name, and homepage" do
    visit new_author_path

    expect(page).to have_field('First name')
    expect(page).to have_field('Last name')
    expect(page).to have_field('Homepage')
  end

  it "should save a new author" do
    visit new_author_path

    fill_in 'author_first_name', with: 'Alan'
    fill_in 'author_last_name', with: 'Turing'
    fill_in 'author_homepage', with: 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').click

    author = Author.find_by(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')

    expect(author).to_not be_nil

  end

  it "should not validate without last name" do
    visit new_author_path

    fill_in 'author_first_name', with: 'Alan'
    fill_in 'author_last_name', with: ''
    fill_in 'author_homepage', with: 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').click

    expect(page).to have_text("Last name can't be blank")
  end

end