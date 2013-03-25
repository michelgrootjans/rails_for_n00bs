require 'spec_helper'

feature "Character management:" do
  let(:random_name){ Faker::Name.name }

  scenario "User creates a new character" do
    visit characters_path
    click_link "Create New Character ..."

    fill_in "Name", with: random_name
    click_button "Create Character"

    page.should have_text "Character has been created"
    page.should have_text random_name
    page.should have_text "HP: 20/20"
    page.should have_text "100 GP"
  end

  scenario "User creates an invalid character" do
    visit new_character_path

    click_button "Create Character"

    page.should have_text "Namecan't be blank"
  end
end