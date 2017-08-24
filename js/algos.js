//JavaScript Algorithms

//Release 0 Instructions: Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
//Pseudocode: Declare a variable for length and assign value of 0. Compare length of each word in array to var length using a for loop, sorting from shortest to longest. Return the last element (longest) in the array.

function longestPhrase(arr) {
var lgth = 0;
var longest;
for (var i=0; i < arr.length; i++){
    if (arr[i].length > lgth){
        lgth = arr[i].length;
        longest = arr[i];
    }
}
return longest;
}
// longestPhrase(['cat', 'horse', 'banana'])

//

//Release 1 Instructions: Write a function that takes two objects and checks to see if the objects share at least one key-value pair (return a boolean).
//Pseudocode: Iterate through objects to see if they share one key-value pair. Return a boolean.

//Assume that both objects have the same amount of key value pairs
//start with first key value pair in object 1, compare to each key value pair in object 2, then move on to second key value pair in object 1 etc.
function shareKeyValuePair (object1, object2) {
  var number = length.length;
  for (var key in object1) {
    for (var key2 in object2) {
      var keysMatch = (key === key2);
      var valuesMatch = object1[key] === object2[key2];
      if (keysMatch && valuesMatch) {
        return true;
      }
    }

  }
  return false;
}
shareKeyValuePair(
  object1 = {gopher: "ble", cat: "meows", pigeon: "coo"},
  object2 = {dog: "woof", cat: "hiss", crow: "caw"}
  )
//

//Release 2 Instructions: Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
//(Argument of 3 returns 3 randomly generated strings of varying length, min of 1 letter and max of 10 letters.)
function createArray(integer) {
  var times;
  new_array = [];
  for (times = 1; times<=integer; times++){
      word_length = (Math.floor(Math.random() * 10));
      alphabet = "abcdefghijklmnopqrstuvwxyz";
      word = "";
          for (var i = 0; i<= word_length; i++)
          word += alphabet.charAt(Math.floor(Math.random()*20));
          new_array.push(word);
  }
  console.log(new_array)
  return(new_array)
}
// createArray(3)

//Driver Code
//Does the following 10 times: generates an array, prints the array, feeds the array into the longest word function, and prints the result.

var times = 10
for (var i = 0; i <= 10; i++) {
  console.log(longestPhrase(createArray(3)));
}
