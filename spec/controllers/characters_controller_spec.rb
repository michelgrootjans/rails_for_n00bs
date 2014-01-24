require 'spec_helper'

describe CharactersController do

  describe "#index" do
    it "shows all existing characters" do
      characters = FactoryGirl.create_list(:character, 10)
      get :index
      assigns(:characters).should == characters
    end
  end

  describe "#show" do
    it "shows an existing character's details" do
      character = FactoryGirl.create(:character)
      get :show, id: character.id # visit /characters/1
      assigns(:character) == character
    end
  end

  describe "#create" do
    before(:each) do
      post :create, {character: {name: "Aragorn"}}
    end

    it "create a character" do
      Character.find_by_name("Aragorn").should be
    end

    it "redirects to the character details" do
      page.should redirect_to "/characters/#{Character.last.id}"
    end
  end
end