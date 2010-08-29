require 'spec_helper'

describe Event do
  context "created with minimal information" do
    before :all do
      @event = Event.new
    end
    #it "has a planner"
    it "defaults to being free" do
      @event.cost == 0.0
    end
    it "is invalid without a name" do
      @event.errors[:name].grep(/can\'t be blank/).one?
    end
    it "is invalid without a location" do
      @event.errors[:location].grep(/can\'t be blank/).one?
    end
    it "is invalid without a start date" do
      @event.errors[:start_date].grep(/can\'t be blank/).one?
    end
  end
end
