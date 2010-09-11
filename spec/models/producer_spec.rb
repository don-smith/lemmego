require 'spec_helper'

describe Producer do
  it "can create an event" do
    producer = Factory(:pam)
    event = producer.events.create(:name => "DevCon", :start_time => Time.now, :location => "Auditorium")
    event.should_not be_nil
  end
end
