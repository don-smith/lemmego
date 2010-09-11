Feature: Pam, the producer, creates a new event
	As an event producer
	I want to enter a new event
	So I can produce the best event possible
	
	Scenario: Success with only minimum information
		Given I am signed in as Pam
		And I am on my profile page
		When I follow "Create new event"
		And I fill in "Name" with "DevCon 2010"
		And I fill in "Location" with "City Center"
		And I fill in "Start time" with "August 23, 2011 9:00 AM"
		And I press "Create Event"
		Then I should see "DevCon 2010"