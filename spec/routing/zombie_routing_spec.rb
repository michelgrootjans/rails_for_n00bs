require 'spec_helper'

describe "Zombie routing" do
  it "routing the index page" do
    get("/zombies").should route_to "zombies#index"
  end

  it "routing the show page" do
    get("/zombies/1").should route_to "zombies#show", id: "1"
  end
end