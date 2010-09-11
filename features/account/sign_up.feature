Feature: User signs up for a new account
	As a visitor
	I want to sign up for a new account
	So I can contribute to the site
	
	Scenario: Successful sign up
		When I sign up as Pam
		Then I should see Pam's email
