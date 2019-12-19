#=======================================================================
#  Author: Rosel Sosa Gonzalez
#  Title: Quick Sort
#  Based on: http://www.geekviewpoint.com/python/sorting/quicksort
#  Package: algorithms
#  Category: sorting
#
#  Statement:
#  Given a disordered list of integers (or any other items),
#   rearrange the integers in natural order.
#
#  Sample Input: [8, 5, 3, 1, 9, 6, 0, 7, 4, 2]
#
#  Sample Output: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
#
#  Time Complexity of Solution:
#  Best Case O(nlog(n)); Average Case O(nlog(n)); Worst Case O(n^2),
#
#  Approach:
#  Quicksort is admirably known as the algorithm that sorts an array
#  while preparing to sort it. For contrast, recall that merge sort
#  first partitions an array into smaller pieces, then sorts each piece,
#  then merge the pieces back. Quicksort actually sorts the array
#  during the partition phase.
#
#  Quicksort works by selecting an element called a pivot and splitting
#  the array around that pivot such that all the elements in, say, the
#  left sub-array are less than pivot and all the elements in the right
#  sub-array are greater than pivot. The splitting continues until the
#  array can no longer be broken into pieces. That's it. Quicksort is
#    done.
#
#  All this fussing about quicksort sorting while preparing to sort
#  may give the impression that it is better than mergesort, but its
#  not. In practice their time complexity is about the same -- with
#  one funny exception. Because quicksort picks its pivot randomly,
#  there is a practically impossible possibility that the algorithm
#    may take O(n^2) to compute.
#
#  The aforementioned notwithstanding, quicksort is better than
#    mergesort if you consider memory usage. Quicksort is an in-place
#    algorithm, requiring no additional storage to work.
#=======================================================================
class QuickSort
  class << self
    def call(array)
      quick_sort(array, 0, array.size - 1)
    end

    def quick_sort(array, first, last)
      pivot = partition(array, first, last) if first < last
      quick_sort(array, first, pivot - 1)
      quick_sort(array, pivot + 1, last)
    end

    def partition(array, first, last)
      pivot = first + Random.rand(last - first + 1)
      swap(array, pivot, last)
      first.upto(last).each do |i|
        swap(array, i, first) if array[i] <= array[last]
        first += 1
      end
      swap(array, first, last)
      first
    end

    def swap(array, x, y)
      array[x], array[y] = array[y], array[x]
    end
  end
end

QuickSort.call([8, 5, 3, 1, 9, 6, 0, 7, 4, 2])
# How to use
# Add `return integers_array to `#call`
# Then `execute` QuickSort.call([8,5,3,1,9,6,0,7,4,2])