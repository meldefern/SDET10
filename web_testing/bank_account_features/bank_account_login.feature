Feature: Login
	As a customer
	I want to be able to login to my account
	So that I can check my balance

	Scenario: As a registered user, I am able to log in
		Given that I am on the login page
		When I enter my valid credentials
		Then I am logged in

	Scenario: As an unregistered user, I am not able to log in
		Given that I am on the login page
		When I enter credentials
		Then I am not logged in

	Scenario: As an unregistered user, I am able to sign up
		Given that I am on the login page
		And I click sign up
		When I complete the mandatory fields
		Then I am 
