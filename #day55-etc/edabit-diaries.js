/*day 55
Perimeter of a Rectange*/
function findPerimeter(length, width) {
	return 2 * length + 2 * width;
}

/*Area of a Triangle*/
function triArea(base, height) {
	return 0.5 * base * height;	
}

/*A String Including "something," a space, and a particular variable*/
function giveMeSomething(a) {
	return "something" + " " + a;
}

/*A Function That Returns "True" When Two Numbers Are Equal and Otherwise Returns "False"*/
function isSameNum(num1, num2) {
	if (num1 === num2) {
		return true;
	} else {
			return false;
	}
}

/* Converting Minutes into Seconds*/
function convert(minutes) {
	return minutes * 60;
}

/*Equality Check*/
function checkEquality(a, b) {
  if (a === b) {
		return true;
	} else {
			return false;
	}
}

/*Find the Second Largest Number*/
function secondLargest(arr) {
	var max = Math.max.apply(null, arr);
        maxi = arr.indexOf(max);
    arr[maxi] = -Infinity; 
    var secondMax = Math.max.apply(null, arr);  
    arr[maxi] = max;
    return secondMax;
};
