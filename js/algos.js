//Release 0: Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
//Use each loop to find the length of each element in the array.
//Sort the lengths from shortest to longest.
//Return the last element (longest) in the array.
function longestPhrase(arr) {
for (var i = 0; i <= arr.length; i++){
  arr.sort()
  console.log(arr[arr.length -1])
return (arr[arr.length -1])
}
}
longestPhrase(['cat', 'elephant', 'dolphin']);
longestPhrase(['giraffe', 'dog', 'bird'])

//Release 1: Write a function that takes two objects and checks to see if the objects share at least one key-value pair (return a boolean). Doesn't matter if a property is a string or identifier name.
function overlap_object(object1, object2) {
for (var i in object1){
  if (! object2.hasOwnProperty(i) || object1[i] !== object2[i] ) {
    return false;
  }
}
return true;
}
overlap_object({animal: "cat", sound: 'meow'}, {animal: "cat", sound: 'hiss'})

function checkIfObjectContains(object1, object2) {
for (var i in object1) {
    if (object2.hasOwnProperty(i) && object2.hasOwnProperty(object1[i]));
      console.log(i + "=" + object1[i]);
      console.log('true');
      return true;
  }
}
checkIfObjectContains({animal: "cat", sound: 'hiss'}, {animal: "cat", sound: 'hiss'})
//
function checkIfObjectContains2(object1, object2){
  for (var i in object1){
    if (object1[i] == object2[i])
    console.log('true');
    console.log(i + "=" + object1[i]);
    return true;
  }
}
checkIfObjectContains2({animal: "cat", sound: 'hiss'}, {animal: "cat", sound: 'hiss'})

//Release 2: Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
//(Argument of 3 returns 3 randomly generated strings of varying length, min of 1 letter and max of 10 letters.)
//Driver code: do 10 times: generates an array, prints the array,feeds array into longest word function, and prints result.
//Create randomly generated number between 1 and 10
//Integer = number of words in array
//word_length = length of word
function createArray(integer) {
new_array = [];
word_length = Math.random() * 10;
Math.floor(word_length);
}


