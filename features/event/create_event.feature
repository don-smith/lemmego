Feature: Pam, the producer, creates a new event
	As an event producer
	I want to enter a new event
	So I can produce the best event possible
	
	Scenario: Success with only minimum information
		Given I have signed up as Pam
		And I am on my profile page
		When I create an event named "DevCon"
		Then I should see "DevCon"