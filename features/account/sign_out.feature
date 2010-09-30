Feature: User signs out of their account
	As a user
	I want to sign out of my account
	So I can move on to something else
	
	Scenario: Successful sign out
	  Given I have signed up as Pam
		When I follow "Sign out"
		Then I should see "Sign in"
