class InsertionSort
  def initialize
    @sorted = []
  end

  def remove_element_from_array(un_sorted)
    un_sorted.shift
  end

  def insert_element_into_sorted_array(index, un_sorted)
    @sorted.insert(focus + 1, un_sorted.first)
  end

  def sort(un_sorted)
    until un_sorted.size == 0
      focus = @sorted.size - 1
      loop do
          if focus < 0
          @sorted.unshift(un_sorted.first)
          remove_element_from_array(un_sorted)
          break
        elsif un_sorted.first >= @sorted[focus]
          @sorted.insert(focus + 1, un_sorted.first)
          remove_element_from_array(un_sorted)
          break
        end
        focus -= 1
      end
    end
    @sorted
  end
end

# array = [2, 1, 2]
# array = ["d", "b", "a", "c"]
# array = [2, -1, 1, 2, 3, 4, 5, 4]
# array = [2, 1, 5, 4, -3, 1]
# array = (1..100).to_a.shuffle
# sorter = InsertionSort.new
# p sorter.sort(array)
