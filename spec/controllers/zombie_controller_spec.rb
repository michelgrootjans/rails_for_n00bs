require "spec_helper"

describe ZombiesController do
  let(:zombies){ [stub, stub, stub] }
  let(:zombie){ stub(id: 25) }

  it "lists all existing zombies" do
    Zombie.stub(:all){ zombies }
    get :index
    assigns(:zombies).should == zombies
  end

  it "shows a zombies" do
    Zombie.stub(:find){ zombie }
    get :show, id: zombie.id
    assigns(:zombie).should == zombie
  end
end