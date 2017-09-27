function fizzBuzz(maxRangeInt){
	fizzBuzzArray = [];

	for(i = 0; i < maxRangeInt; i++){

		if (divisibleBy(i, 3) && divisibleBy(i, 5)) {

			fizzBuzzArray.push('fizzbuzz')

		} else if (divisibleBy(i, 3)){

			fizzBuzzArray.push('fizz');

		} else if (divisibleBy(i, 5)){

			fizzBuzzArray.push('buzz');

		} else {

			fizzBuzzArray.push(i);
		}
	}

	return fizzBuzzArray;
}

function divisibleBy(value, multiple){
	if (value % multiple == 0){
		return true;
	}
}
