#Search for an integer in an array and return the index.
def search_array (arr, integer)
 idx = 0
 if arr.include?integer
 arr.each do
    if
    arr[idx] == integer
    puts idx
    end
  idx +=1
end
  else puts "nil"
end
end
search_array([3,4,5,6], 7)

#Fibonnacci Sequence
def fib(num)
arr = [0,1]
  until arr.length == num
  arr_new = arr[-1] + arr[-2]
  arr << arr_new
  end
puts arr [-1]
end
fib(100)

#Bubble sort
#Iterates through an array of numbers, compares one number to each in the array and then places them in ascending order (sorts). Continue to loop until all numbers are sorted.
#Swapped = false indicates that all values have been compared and breaks loop.
#Print new array.
def bubble_sort(array)
    n = array.length
    loop do
    swapped = false
    (n-1).times do |i|
        if array[i] > array[i + 1]
            array[i], array[i + 1] = array[i+1], array[i]
            swapped = true
              end
        end
    break if not swapped
    end
    array
end
a = [1, 5, 2, 3, 3, 7]
p bubblesort(a)
