#=======================================================================
#  Author: Rosel Sosa Gonzalez
#  Title: Radix Sort
#  Based on: http://www.geekviewpoint.com/python/sorting/radixsort
#  Package: algorithms
#  Category: sorting
#
#  Statement:
#  Given a disordered list of integers, rearrange them in natural order.
#
#  Sample Input: [18,5,100,3,1,19,6,0,7,4,2]
#
#  Sample Output: [0,1,2,3,4,5,6,7,18,19,100]
#
#  Time Complexity of Solution:
#  Best Case O(kn); Average Case O(kn); Worst Case O(kn),
#  where k is the length of the longest number and n is the
#  size of the input array.
#
#  Note: if k is greater than log(n) then an nlog(n) algorithm would
#  be a better fit. In reality we can always change the radix
#  to make k less than log(n).
#
#  Approach:
#  radix sort, like counting sort and bucket sort, is an integer based
#  algorithm (i.e. the values of the input array are assumed to be
#  integers). Hence radix sort is among the fastest sorting algorithms
#  around, in theory. The particular distinction for radix sort is
#  that it creates a bucket for each cipher (i.e. digit); as such,
#  similar to bucket sort, each bucket in radix sort must be a
#  growable list that may admit different keys.
#
#  For decimal values, the number of buckets is 10, as the decimal
#  system has 10 numerals/cyphers (i.e. 0,1,2,3,4,5,6,7,8,9). Then
#  the keys are continuously sorted by significant digits.
#=======================================================================
class RadixSort
  BASE = 10
  def self.call(integers_array)
    max_length = false
    placement = 1

    until max_length do
      max_length = true
      # declare and initialize buckets
      buckets = Array.new(BASE){[]}
      # split integers_array between arrays
      integers_array.each do |number|
        unit = number / placement
        buckets[unit % BASE].push(number)
        max_length = false if max_length && unit > 0
      end
      # empty array into integers_array array
      position = 0
      0.upto(9) do |index|
        buck = buckets[index]
        buck.each_with_index do |item|
          integers_array[position] = item
          position += 1
        end
      end
      placement *= BASE
    end
  end
end

# How to use
# Add `return integers_array to `#call`
# Then `execute` RadixSort.call([18, 5, 100, 3, 1, 19, 6, 0, 7, 4, 2])