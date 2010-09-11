Given /^I have created event ([^"]*)$/ do |event|
  e = Factory.build(event.downcase.to_sym)
  visit path_to("my profile page")
	click_link "Create new event"
	fill_in "Name", :with => e.name
	fill_in "Location", :with => e.location
	fill_in "Start time", :with => e.start_time
	click_button "Create Event"
end

