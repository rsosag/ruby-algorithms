#=======================================================================
#  Author: Rosel Sosa Gonzalez
#  Title: Bublle Sort
#  Based on: http://www.geekviewpoint.com/java/sorting/bubblesort
#  Package: Algorithms
#  Category: Sorting
#
#  Statement:
#  Given a disordered list of integers (or any other items),
#  rearrange the integers in natural order.
#
#  Sample Input: [8,5,3,1,9,6,0,7,4,2,5]
#  Sample Output: [0,1,2,3,4,5,5,6,7,8,9]
#
# Time Complexity of Solution:
#  Best O(n^2); Average O(n^2); Worst O(n^2).
#
#  Approach:
#   Bubblesort is an elementary sorting algorithm. The idea is to
#   imagine bubbling the smallest elements of a (vertical) array to the
#   top; then bubble the next smallest; then so on until the entire
#   array is sorted. Bubble sort is worse than both insertion sort and
#   selection sort. It moves elements as many times as insertion sort
#   (bad) and it takes as long as selection sort (bad). On the positive
#   side, bubble sort is easy to understand. Also there are highly
#   improved variants of bubble sort.
#
#  0] For each element at index i from 0 to n, loop:
#  1] For each element at index k, from n to i exclusive, loop:
#  2] If the element at k is less than that at k-1, swap them.
#=======================================================================
class BubbleSort
  def self.call(integers_array)
    # If size of array is 0 or 1 then it is ordered
    return integers_array if integers_array.size <= 1

    loop do
      swapped = false
      0.upto(integers_array.size-2) do |i|
        if integers_array[i] > integers_array[i+1]
          # compare consecutive numbers and swap if it is necessary
          integers_array[i], integers_array[i+1] = integers_array[i+1], integers_array[i]
          swapped = true
        end
      end
      break unless swapped
    end
   integers_array
  end
end
# How to use
# Then `execute` BubbleSort.call([8, 5, 3, 1, 9, 6, 0, 7, 4, 2 ,5])