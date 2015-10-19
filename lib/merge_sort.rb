require 'pry'

class MergeSort
  # split array in half down to base case - Arrays w/ single element
  # compare first element (first array) to second element (2nd array)
  # Put lower element first and higher element second - unshift
  # Use recursion

  def halve(array)
    return array if array.size <= 1
    array1 = array.slice(0, array.size/2)
    array2 = array.slice(array.size/2, array.size)
    halve(array1)
    halve(array2)
  end

  def sort(array)
    return array if array.size <= 0

    sorted_first = sort(array1)
    sorted_second = sort(array2)

    merge(sorted_first, sorted_second)
  end

  def merge(array1, array2)
    sorted_array = []
      if array1.first > array2.first
        sorted_array.unshift(array2.first)
        array2.shift
      else
        sorted_array.unshift(array1.first)
        array1.shift
      end
    sorted_array
  end
end

# array1 = [3]
# array2 = [4]
# array = [4, 3, 2, 1]
# array = ["d", "b", "a", "c"]
# array = [2, -1, 1, 2, 3, 4, 5, 4]
# array = [2, 1, 5, 4, -3]
# array = (1..100).to_a.shuffle
# sorter = MergeSort.new
# sorter.halve(array)
# sorter.merge(array1, array2)
