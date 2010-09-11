require 'spec_helper'

describe Event do
  it "requires certain information to be valid" do
    event = Event.new
    event.cost.should == 0.0
    event.valid?.should be_false # need this for the next assertions to work
    event.errors[:name].should include("can't be blank")
    event.errors[:location].should include("can't be blank")
    event.errors[:start_time].should include("can't be blank")
  end
end
