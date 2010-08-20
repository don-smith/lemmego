Feature: Pam, the planner, creates a new event
	As an event planner and coordinator
	I want to enter a new event
	So that I can produce the best event possible
	
	Scenario: Success with only minimum information
		Given I am on the new event page
		When I fill in "Name" with "DevCon 2010"
		And I fill in "Location" with "City Center"
		And I fill in "Start time" with "August 23, 2010 9:00 AM"
		And I press "Create Event"
		Then I should see "DevCon 2010"