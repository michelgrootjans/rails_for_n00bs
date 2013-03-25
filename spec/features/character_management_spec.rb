require 'spec_helper'

feature "Character management:" do
  scenario "User creates a new character" do
    visit "/characters"
    pending "Work in progress"
    click_link "Create New Character ..."

    fill_in "Name", with: "Aragorn"
    click_button "Create Character"

    page.should have_text "Character has been created"
    page.should have_text "Aragorn"
  end
end