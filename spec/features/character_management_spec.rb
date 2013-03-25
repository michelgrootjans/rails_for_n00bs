require 'spec_helper'

feature "Character management:" do
  let(:random_name){ Faker::Name.name }

  scenario "User creates a new character" do
    visit "/characters"
    click_link "Create New Character ..."

    fill_in "Name", with: random_name
    click_button "Create Character"

    page.should have_text "Character has been created"
    page.should have_text random_name
  end
end