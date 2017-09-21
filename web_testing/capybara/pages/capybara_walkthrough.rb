require 'capybara/rspec'
# capybara is another wrapper

class CapybaraWalkthrough

	def initialize(browser)
		@browser = Capybara::Session.new(browser)
	end

	def homepage
		@DemoStoreHomepage.new(@browser)
	end


end
