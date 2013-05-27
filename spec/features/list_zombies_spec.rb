require 'spec_helper'

feature "List zombies:" do
  scenario "User lists existing zombies" do
    zombies = FactoryGirl.create_list(:zombie, 3)

    visit "/zombies"
    zombies.each do |zombie|
      page.should have_text zombie.name
    end
  end

  scenario "User visits zombie page" do
    zombie = FactoryGirl.create(:zombie)

    visit "/zombies/#{zombie.id}"
    page.should have_text zombie.name
  end
end