require 'pry'
require 'appium_lib'

RSpec.configure do |config|
  config.formatter = :documentation
end

def caps
  {
    "platformName": "Android",
    "deviceName": "emulator-5554",
    "app": "/Users/Tech-A35/Downloads/budgetwatch.apk"
  }
end
