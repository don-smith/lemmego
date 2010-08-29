Feature: Anonymous visitor can view an event
As a visitor interested in an event
I want to get more information about an event
So I can decide if I want to attend or not

	Scenario: Can view a published event
		When I go to the DevCon Northwest page
		Then I should see "DevCon Northwest"
