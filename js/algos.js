// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
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

//Write a function that takes two objects and checks to see if the objects share at least one key-value pair (return a boolean). Doesn't matter if a property is a string or identifier name.

//
function share_value(object1, object2) {

}