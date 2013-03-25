require 'spec_helper'

describe "Character routing:" do
  it "routes the index page" do
    get("/characters").should route_to controller: "characters", action: "index"
  end

  it "routes the details page" do
    get("/characters/1").should route_to controller: "characters", action: "show", id: "1"
  end

  it "routes the create page" do
    get("/characters/new").should route_to controller: "characters", action: "new"
  end

  it "routes the create action" do
    post("/characters").should route_to controller: "characters", action: "create"
  end
end