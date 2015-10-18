class MergeSort
  # split array in half down to base case (Two or One???!!!!) - slice
  # compare first element (first array) to second element (2nd array)
  # Put lower element first and higher element second (push) or shovel

  # comparitive -

  def initialize
    @sorted_array = []
  end

  def sort(array)

    return if array1.size < 0

    array1 = array.slice(size/2.to_i)
    array2 = array.slice(size/2.to_i)

    # Call sort method here
    sort(array)
    merge(array1, array2)

  end

  def merge(array1, array2)
    if array1 < array2
      @sorted_array << array1
    else
      @sorted_array << array2
    end
  end
end


# # array = ["d", "b", "a", "c"]
# array = [2, -1, 1, 2, 3, 4, 5, 4]
array = [2, 1, 5, 4, -3]
# array = (1..100).to_a.shuffle
sorter = MergeSort.new
p sorter.sort(array)
