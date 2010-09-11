Feature: User signs in to their account
	As a visitor
	I want to sign in to my account
	So I can contribute to the site
	
	Scenario: Successful sign in 
		Given I have signed up as Pam
		And I am not signed in
		When I sign in as Pam
		Then I should see Pam's email
		