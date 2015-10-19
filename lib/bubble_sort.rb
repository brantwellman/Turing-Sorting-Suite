class BubbleSort
  attr_reader :curr_index, :prev_index

  def initialize
    @curr_index = 1
    @prev_index = 0
  end

  def increase_indeces
    @prev_index += 1
    @curr_index += 1
  end

  def reset_indeces
    @prev_index = 0
    @curr_index = 1
  end

  def array_empty?(array)
    array == []
  end

  def array_size_one?(array)
    array.size == 1
  end

  def pre_sorted?(array)
    array_empty?(array) || array_size_one?(array)
  end

  def sort(array)
    counter = 0
    if pre_sorted?(array) then array
    else
      until counter == array.size - 1
        reset_indeces
        counter = 0
        until @curr_index == array.size
          previous = array[@prev_index]
          current = array[@curr_index]
          if current < previous
            array[@prev_index] = current
            array[@curr_index] = previous
            counter -= 1
          end
          increase_indeces
          counter += 1
        end
      end
      array
    end
  end
end

# array = ["d", "b", "a", "c"]
# array = [2, -1, 1, 2, 3, 4, 5, 4]
# array = [2, 1, 5, 4, -3]
# array = (1..100).to_a.shuffle
# sorter = BubbleSort.new
# p sorter.sort(array)
