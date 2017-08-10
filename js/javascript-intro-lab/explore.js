//Write a function that takes a string as a parameter and reverses the string.
//Take the last letter of string and make it the first letter of new string. Take the second to last letter of string and make it the second letter of new string, etc. Add/concatenate the letters together and print to the console.

function reverse(string) {
  var new_string = "";
  for (var i = string.length -1; i >= 0; i --)
  new_string += string[i];
  return new_string;
}
reverse("cat")