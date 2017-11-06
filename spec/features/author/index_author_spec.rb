require 'rails_helper'

describe "Index author page", type: :feature do

  it "should render all authors with name and homepage" do
    visit authors_path
    expect(find('.author-list')).to have_content("Alan Turing")
  end

end