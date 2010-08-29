Feature: User signs up for new account
	As a user
	I want to create an account
	So that I can contribute to the site
	
	Scenario: Successful sign up 
		Given I am on the sign up page
		When I fill in "Email" with "new@user.com"
		And I fill in "Password" with "MySeekret"
		And I fill in "Password confirmation" with "MySeekret"
		And I press "Sign up"
		Then 
		