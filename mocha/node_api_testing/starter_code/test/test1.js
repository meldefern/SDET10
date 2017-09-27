// Load dependecies
var expect = require('chai').expect,
test = require('selenium-webdriver/testing'),
webdriver = require('selenium-webdriver');

// Our test
test.describe('Test', function () {
	test.it('Title should be "The Internet"', function () {
		// Set timeout to 10 seconds
		this.timeout(10000);

		// Get driver
		// var driver = new webdriver.Builder().
		// withCapabilities(webdriver.Capabilities.firefox()).
		// build();
		// var driver = new webdriver.Builder().
		// withCapabilities(webdriver.Capabilities.edge()).
		// build();
		// var driver = new webdriver.Builder().
		// withCapabilities(webdriver.Capabilities.ie()).
		// build();
		var driver = new webdriver.Builder().
		withCapabilities(webdriver.Capabilities.chrome()).build();

		// Go to URL
		driver.get('http://localhost:3333/cars');

		driver.findElement(webdriver.By.linkText("New Car")).click();
		driver.findElement(webdriver.By.xpath("//*[@id='formButton']/input[1]")).sendKeys("Car1");
		driver.findElement(webdriver.By.xpath("//*[@id='formButton']/input[2]")).sendKeys("A description of car1");
		driver.findElement(webdriver.By.xpath("//*[@id='formButton']/input[3]")).sendKeys("https://www.moj.io/wp-content/themes/mojio-child/assets/img/home/orangecar.png");
		driver.findElement(webdriver.By.id("buttons")).click();

		// Find title and assert
		driver.executeScript('return document.title').then(function(return_value) {
		  

		 	// Quit webdriver
		  	// driver.quit();
		});
	});
});