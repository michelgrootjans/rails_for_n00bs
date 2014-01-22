require 'spec_helper'

feature "Character management" do
  scenario "Create new character" do
    visit "/characters"
    click_on "Create New Character ..."

    fill_in :name, with: "Aragorn"
    click_on "Create Character"

    page.should have_text "Aragorn"
  end
end