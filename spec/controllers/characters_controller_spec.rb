require 'spec_helper'

describe CharactersController do
  it "shows a characters detail" do
    character = Character.create
    get :show, id: character.id
    assigns(:character).should == character
  end

  describe "create character" do
    before :each do
      post :create, character: { name: "Aragorn"}
    end

    it "creates a new character" do
      Character.find_by_name("Aragorn").should_not be_nil
    end

    it "redirects to the character detail" do
      page.should redirect_to "/characters/#{Character.find_by_name("Aragorn").id}"
    end
  end
end