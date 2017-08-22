//Release 0 Instructions: Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
//Pseudocode: Use each loop to find the length of each element in the array. Sort the lengths from shortest to longest. Return the last element (longest) in the array.

function longestPhrase(arr) {
var lgth = 0;
var longest;
for(var i=0; i < arr.length; i++){
    if(arr[i].length > lgth){
        lgth = arr[i].length;
        longest = arr[i];
    }
}
return longest;
}
longestPhrase(['cat', 'horse', 'banana'])

//Release 1 Instructions: Write a function that takes two objects and checks to see if the objects share at least one key-value pair (return a boolean). Doesn't matter if a property is a string or identifier name.
//Pseudocode: Iterate through objects to see if they share one key-value pair. Return a boolean.
function shareKeyValuePair (object1, object2){
for (var i in object1)
if ((Object.keys(object1)[0] == Object.keys(object2)[0]) &&
object1[i] == object2[i])
return true;
else
return false;
}
shareKeyValuePair(object1 = {animal: "cat", sound: "meow"}, object2 = {animal: "cat", sound: "meow"})

//Release 2: Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
//(Argument of 3 returns 3 randomly generated strings of varying length, min of 1 letter and max of 10 letters.)
//Driver code: do 10 times: generates an array, prints the array,feeds array into longest word function, and prints result.
//Create randomly generated number between 1 and 10
//Integer = number of words in array
//word_length = length of word
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
  return new_array;
}
