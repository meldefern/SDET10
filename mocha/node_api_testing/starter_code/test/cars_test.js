// Add our dependencies
var expect = require('chai').expect;
var supertest = require('supertest');
var api = supertest('http://localhost:3333/api');
var mongoose = require('mongoose');

// make connection to db by setting up db helpers
mongoose.Promise = global.Promise;
mongoose.connect('mongodb://localhost/cars');
var db = mongoose.connection;
db.dropDatabase();

describe('GET /api/cars', function(){

	before(function(done){
		api.post('/cars')
		// Setting the headers for the request
		.set('Accept', 'application/json')
		.send({
			// The entry we want in the DB
			'name': 'VW',
    		'description': 'This is the cars description',
    		'image': 'http://newsroom.vw.com/app/uploads/2017/08/beachbuzz1.jpg',
		}).end(done);
	})

	it('should return a 200 response', function(done){
		api.get('/cars')
		.set('Accept', 'application/json')
		.expect(200, done)
	})

	it('should return an array', function(done){
		api.get('/cars')
		.set('Accept', 'application/json')
		.end(function(error, response){
			expect(response.body.cars).to.be.an('array');
			done();
		})
	})

	it('should return an object that has a field called "name"', function(done){
		api.get('/cars')
		.set('Accept', 'application/json')
		.end(function(error, response){
			expect(response.body.cars[0]).to.have.property('name');
			done();
		})
	})

	it('should return an object that has a field called "image"', function(done){
		api.get('/cars')
		.set('Accept', 'application/json')
		.end(function(error, response){
			expect(response.body.cars[0]).to.have.property('image');
			done();
		})
	})

	it('should return an object that has a field called "description"', function(done){
		api.get('/cars')
		.set('Accept', 'application/json')
		.end(function(error, response){
			expect(response.body.cars[0]).to.have.property('description');
			done();
		})
	})
})

describe('POST /cars', function(){

	before(function(done){
		api.post('/cars')
		.set('Accept', 'application/json')
		.send({
			'name': 'car',
			'description': 'a weird car',
			'image': 'https://i.ytimg.com/vi/KiMniCcum1w/maxresdefault.jpg',
		}).end(done);
	})

	it('should have car stored in database', function(done){
		api.get('/cars')
		.set('Accept', 'application/json')
		.end(function(error, response){
			cars = response.body.cars;
			expect(cars[cars.length-1].name).to.equal('car');
			expect(cars[cars.length-1].description).to.equal('a weird car');
			expect(cars[cars.length-1].image).to.equal('https://i.ytimg.com/vi/KiMniCcum1w/maxresdefault.jpg');
			done();
		})
	})
})

describe('GET /cars/:id', function(){

	var id = null;
	var name = null;
	var description = null;
	var image = null;

	before(function(done){
		api.post('/cars')
		.set('Accept', 'application/json')
		.send({
			'name': 'another car',
			'description': 'a fancy car',
			'image': 'https://i.ytimg.com/vi/KiMniCcum1w/maxresdefault.jpg'
		}).end(function(error, response){
			
			id = response.body._id;
			name = response.body.name;
			description = response.body.description;
			image = response.body.image;

			done();
		})
	})

	it('should get the values of the last item in the database', function(done){

		api.get('/cars/' + id)
		.set('Accept', 'application/json')
		.end(function(error, response){

	    	expect(response.body).to.have.property('_id', id);
	        expect(response.body).to.have.property('name', name);
	        expect(response.body).to.have.property('description', description);
	        done();
      });
	})

})

describe('DELETE /cars/:id', function(){

	var id = null;

	before(function(done){
		api.post('/cars')
		.set('Accept', 'application/json')
		.send({
			'name': 'fourth car',
			'description': 'car to delete',
			'image': 'https://i.ytimg.com/vi/KiMniCcum1w/maxresdefault.jpg'
		}).end(function(error, response){

			id = response.body._id;

			api.delete('/cars/' + id)
			.end(function(error, response){

				done();
			})
		});
	})

	it('should delete the last item in the database', function(done){

		api.get('/cars/' + id)
		.set('Accept', 'application/json')
		.end(function(error, response){

			expect(response.body).to.be.a('null');
		})
	})
})