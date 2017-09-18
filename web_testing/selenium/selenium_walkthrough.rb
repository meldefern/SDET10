require 'selenium-webdriver'

# http://toolsqa.com/automation-practice-form/

class QaForm

	def initialize
		Selenium::WebDriver::Chrome.driver_path = '/usr/local/bin/chromedriver'
		@chrome_driver = Selenium::WebDriver.for :chrome

		# page objects
		@practice_form_url = 'http://toolsqa.com/automation-practice-form/'
		@wait = Selenium::WebDriver::Wait.new(:timeout => 5)
	end

	def access_practice_form
		@chrome_driver.get @practice_form_url
	end

	def add_first_name(first_name)
		@chrome_driver.find_element(:name, 'firstname').send_keys(first_name)
	end

	def add_last_name(last_name)
		@chrome_driver.find_element(:name, 'lastname').send_keys(last_name)
	end

	def add_sex(sex)
		if sex == 'male'
			@chrome_driver.find_element(:id, 'sex-0').click
		elsif sex == 'female'
			@chrome_driver.find_element(:id, 'sex-1').click
		else
			raise "please input male or female"
		end
	end

	def add_years_of_experience(years_of_experience)
		if years_of_experience == '1'
			@chrome_driver.find_element(:id, 'exp-0').click
		elsif years_of_experience == '2'
			@chrome_driver.find_element(:id, 'exp-1').click
		elsif years_of_experience == '3'
			@chrome_driver.find_element(:id, 'exp-2').click
		elsif years_of_experience == '4'
			@chrome_driver.find_element(:id, 'exp-3').click
		elsif years_of_experience == '5'
			@chrome_driver.find_element(:id, 'exp-4').click
		elsif years_of_experience == '6'
			@chrome_driver.find_element(:id, 'exp-5').click
		elsif years_of_experience == '7'
			@chrome_driver.find_element(:id, 'exp-6').click
		else
			raise "please select number of years of years of experience"
		end		
	end

	def add_date(date)
		@chrome_driver.find_element(:id, 'datepicker').send_keys(date)
	end

	def add_profession(*professions)
		for profession in professions
			if profession == 'manual'
				@chrome_driver.find_element(:id, 'profession-0').click
			elsif profession == 'automation'
				@chrome_driver.find_element(:id, 'profession-1').click
			end
		end
	end

	def add_automation_tool(*tools)
		for tool in tools
			if tool = 'qtf'
				@chrome_driver.find_element(:id, 'tool-0').click
			elsif tool = 'selenium ide'
				@chrome_driver.find_element(:id, 'tool-1').click
			elsif tool = 'selenium webdriver'
				@chrome_driver.find_element(:id, 'tool-2').click
			end
		end

	end

end

practice_form = QaForm.new

practice_form.access_practice_form
practice_form.add_first_name('dave')
practice_form.add_last_name('smith')
practice_form.add_sex('female')
practice_form.add_years_of_experience('2')
practice_form.add_date('date')
practice_form.add_profession('manual', 'automation')