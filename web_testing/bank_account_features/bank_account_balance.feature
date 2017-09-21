Feature: transactions
	As a customer
	I want to be able to view my transactions
	So that I can check my expenditure

	Scenario: As a registered user, I can view my balance
		Given that I am a registered user
		When I log in
		Then I can see my balance

	Scenario: As a registered user, I can view my credit transactions
		Given that I am logged in
		When I click view credit transactions
		Then I see my credit transactions

	Scenario: As a registered user, I can view my debit transactions
		Given that I am logged in
		When I click view debit transactions
		Then I see my debit transactions


