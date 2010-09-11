Feature: User views their profile
	As a user
	I want to view my profile
	So I can manage my activity on the site
	
	Scenario: Signed in user views profile
		Given I am signed in as Pam
		When I follow "pam@producer.com"
		Then I should see "Profile for pam@producer.com"
		