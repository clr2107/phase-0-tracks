#NOTE: I did not have a pair for this challenge - I worked with the GPS guide and then independently.
#Method to create a grocery list.
#input: String of items(e.g. "carrots apples cereal pizza").
#steps: Turn string into array of items, iterate through each item to assign key/value in a hash, set default quantity, print the list.
#output: Hash (or grocery list).
def list(string, quantity)
all_items = []
all_items = string.split(" ")
#all_items = ["carrot", "apples", "cereal", "pizza"]
grocery_list = {}
all_items.each do |grocery_item|
 grocery_list[grocery_item] = quantity
end
grocery_list
end
grocery_list = list("carrot apples cereal pizza", 3)

#Add an item to grocery list
#input: grocery list, new item, quantity
#steps: Using syntax hash[key] = value, assign a new key/value pair in the hash, equivalent to a new item in the grocery list.
#output: grocery list hash with new item appended
def add_item(grocery_list, new_item, quantity)
grocery_list[new_item] = quantity
end
add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice-cream", 4)
#Method to remove an item from the list
#input: grocery list, new item, quantity
#steps: Find a method which removes the last key in the hash
#output: Hash with one item removed.
def remove_item(grocery_list, new_item)
grocery_list.delete(new_item)
end
remove_item(grocery_list, "lemonade")

#Method to update the quantity of an item
#input: grocery list
#steps: Isolate item to update and change value to new quantity.
#output: Hash with new updated value.
def update_quantity(grocery_list, item, new_quantity)
 grocery_list[item] = new_quantity
end
update_quantity(grocery_list, "ice-cream", 1)

#Method to print a list and make it look pretty
#input: grocery list
#steps: Iterate through hash to print each key/value pair using puts.
#output: String containing each key-value pair with ":".
def print_list(grocery_list)
  puts "Here is my grocery list:"
  grocery_list.each do |key, value|
    puts "#{key}" + ": " + "#{value}"
  end
end
print_list(grocery_list)

#Reflection: I learned that pseudocode is very important and very useful: it forces you (the coder) to think through every piece of code you are implementing, and also forces you to think about whether other programmers will understand your code, so if it is comprehensible to others.
#Using a hash for this challenge seemed most appropriate because we had clear key/value pairs, meaning each item could be assigned to a key and each quantity to a value. It would have been possible to use an array as well, but that would have resulted in two lists (one for items and one for quantities), and that doesn't seem like the best way to organize the data.
#A method returns the last evaluated statement.
#You can essentially pass anything into a method as an argument, meaning any object (strings, integers, arrays, etc.)
#You can pass information between methods by calling on a method and assigning that to a variable, and then implementing/using that variable within another method. An example from this assignment was assigning grocery_list = list("carrots apples etc."), which called on the list method and allowed the variable of grocery_list to be passed between methods.
#I understand how to create, add to, change and remove items from a hash (manipulate data) and the context within which it would be most useful to use a hash. I definitely still need more practice with passing arguments into hashes.