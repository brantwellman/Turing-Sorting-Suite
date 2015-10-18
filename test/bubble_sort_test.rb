require_relative '../lib/bubble_sort'
require 'minitest'
require 'minitest/autorun'

class BubbleSortTest < Minitest::Test
  def test_it_exists
    sorter = BubbleSort.new
    assert sorter
  end

  def test_it_sorts_arrays_with_strings
    sorter = BubbleSort.new
    array = ["d", "b", "a", "e", "c"]

    assert_equal ["a", "b", "c", "d", "e"], sorter.sort(array)
  end

  def test_it_returns_presorted_array
    sorter = BubbleSort.new
    array = [1, 2, 3, 4, 5]

    assert_equal [1, 2, 3, 4, 5], sorter.sort(array)
  end

  def test_it_returns_an_empty_array
    sorter = BubbleSort.new
    array = []

    assert_equal [], sorter.sort(array)
  end

  def test_it_sorts_an_array_that_includes_duplicate_elements
    sorter = BubbleSort.new
    array = [2, 6, 1, 2, 3, 4, 5, 4]

    assert_equal [1, 2, 2, 3, 4, 4, 5, 6], sorter.sort(array)
  end

  def test_it_sorts_an_array_that_includes_negative_numbers
    sorter = BubbleSort.new
    array = [2, -1, 5, 4, -3]

    assert_equal [-3, -1, 2, 4, 5], sorter.sort(array)
  end

  def test_it_sorts_arrays_in_reversed_order
    sorter = BubbleSort.new
    array = [6, 5, 4, 3, 2, 1]

    assert_equal [1, 2, 3, 4, 5, 6], sorter.sort(array)
  end

  def test_it_sorts_a_shuffled_array_with_100_items
    sorter = BubbleSort.new
    array = (1..100).to_a.shuffle

    assert_equal (1..100).to_a, sorter.sort(array)
  end

  def test_it_sets_iniitial_current_index
    sorter = BubbleSort.new

    assert_equal 1, sorter.curr_index
  end

  def test_it_sets_initial_previous_index
    sorter = BubbleSort.new

    assert_equal 0, sorter.prev_index
  end

  def test_it_swaps_two_elements
    sorter = BubbleSort.new
    array = [2, 1, 3]
    sorter.sort(array)

    assert_equal 1, array[0]
    assert_equal 2, array[1]
  end
end
