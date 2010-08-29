Feature: User signs up for a new account
	As a visitor
	I want to sign up for a new account
	So I can contribute to the site
	
	Scenario: Successful sign up
		Given I am not signed in
		When I go to sign up page
		And I fill in "Email" with "new@user.com"
		And I fill in "Password" with "seekret!"
		And I fill in "Password confirmation" with "seekret!"
		And I press "Sign up"
		Then I should see "new@user.com"
