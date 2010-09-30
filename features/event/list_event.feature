Feature: Pam, the producer, views list of her events
	As an event producer
	I want to view the list of events I'm producing
	So I can edit or delete them
	
	Scenario: Producer can view list of their events
		Given I have signed up as Pam
		And I created an event named "DevCon"
		When I go to my profile page
		Then I should see "DevCon"