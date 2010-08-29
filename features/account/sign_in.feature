Feature: User signs in to their account
	As a visitor
	I want to sign in to my account
	So I can contribute to the site
	
	Scenario: Successful sign in 
		Given I am not signed in
		When I go to sign in page
		And I fill in "Email" with "pam@producer.com"
		And I fill in "Password" with "seekret!"
		And I press "Sign in"
		Then I should see "pam@producer.com"
		