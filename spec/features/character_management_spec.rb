require 'spec_helper'

feature "Character management" do
  let(:random_name){ Faker::Name.name }

  scenario "Create new character" do
    visit "/characters"
    click_on "Create New Character ..."

    fill_in :character_name, with: random_name
    click_on "Create Character"

    page.should have_text random_name
  end
end