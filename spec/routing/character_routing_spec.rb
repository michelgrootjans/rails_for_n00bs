require 'spec_helper'

describe "Character routing:" do
  it "routes the index page" do
    get("/characters").should route_to controller: "characters", action: "index"
  end
end