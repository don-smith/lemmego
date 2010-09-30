Given /^I created an event named "([^"]*)"$/ do |event_name|
  event = Factory.build(:event, :name => event_name)
  visit path_to("my profile page")
	click_link "Create new event"
	fill_in "Name",       :with => event.name
	fill_in "Location",   :with => event.location
	fill_in "Start time", :with => event.start_time
	click_button "Create Event"
end

Given /^the "([^"]*)" event has been created$/ do |event_name|
  Factory(:event, :name => event_name)
end
  
When /^I create an event named "([^"]*)"$/ do |event_name|
  Given "I created an event named \"#{event_name}\""
end


