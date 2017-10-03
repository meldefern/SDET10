require 'appium_lib'
require 'cucumber'
require_relative '../../lib/budget_app.rb'

def opts
  { caps:
    {
      "platformName": "Android",
      "deviceName": "emulator-5554",
      "app": "/Users/Tech-A35/Downloads/budgetwatch.apk"
    }
  }
end

# true creates a global driver variable, or $driver = Appium::Driver.new(opts, false)
Appium::Driver.new(opts, true)

World(BudgetApp)
