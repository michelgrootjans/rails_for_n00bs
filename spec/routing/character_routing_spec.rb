require 'spec_helper'

describe "Character Routing" do
  it "routes /characters" do
    get("/characters").should route_to "characters#index"
  end

  it "routes /characters/new" do
    get("/characters/new").should route_to "characters#new"
  end

  it "routes POST /characters" do
    post("/characters").should route_to "characters#create"
  end

  it "routes /characters/1" do
    get("/characters/1").should route_to "characters#show", id:"1"
  end
end