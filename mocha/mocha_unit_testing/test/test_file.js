// include assertion libraries
var expect = chai.expect;

beforeEach(function(){
	maxRangeInt = 100;
})

describe('fizzBuzz', function(){

	before(function(){
		maxRangeInt = 100;
	})

	it('should return an array', function(){

		expect(fizzBuzz(maxRangeInt)).to.be.a('array');
	})

	it('should return an array of given size', function(){

		expect(fizzBuzz(maxRangeInt)).to.have.lengthOf(maxRangeInt);
	})

	it('should return an array that does not include a multiple of 3', function(){
		multipleOf3 = 3;

		expect(fizzBuzz(15)).to.be.an('array').that.does.not.include(multipleOf3);
	})

	it('should return an array that does not include a multiple of 5', function(){
		multipleOf5 = 5;

		expect(fizzBuzz(15)).to.be.an('array').that.does.not.include(multipleOf5);
	})

	it('should return an array that includes values that are not a multiple of 3 or 5', function(){
		notMultipleOf3or5 = 2;

		expect(fizzBuzz(15)).to.be.an('array').that.does.include(notMultipleOf3or5);
	})
})

describe('divisibleBy', function(){

	it('should return true if value is divisible by 3', function(){
		value = 3;
		multiple = 3;

		expect(divisibleBy(value, multiple)).to.equal(true);
	})

	it('should return true if value is divisible by 5', function(){
		value = 5;
		multiple = 5;

		expect(divisibleBy(value, multiple)).to.equal(true);
	})
})

