require 'spec_helper'

describe Character do
  it{ should validate_presence_of :name }
  it{ should validate_uniqueness_of :name }

  describe "default values" do
    subject{ FactoryGirl.create(:character) }

    its(:hit_points){ should == 20 }
    its(:gold)      { should == 100 }
  end
end