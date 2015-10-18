require_relative '../lib/insertion_sort'
require 'minitest'
require 'minitest/autorun'

class InsertionSortTest < Minitest::Test
  def test_it_exists
    sorter = InsertionSort.new
    assert sorter
  end

  def test_it_sorts_arrays_with_strings
    sorter = InsertionSort.new
    array = ["d", "b", "a", "e", "c"]

    assert_equal ["a", "b", "c", "d", "e"], sorter.sort(array)
  end

  def test_it_returns_presorted_array
    sorter = InsertionSort.new
    array = [1, 2, 3, 4, 5]

    assert_equal [1, 2, 3, 4, 5], sorter.sort(array)
  end

  def test_it_returns_an_empty_array
    sorter = InsertionSort.new
    array = []

    assert_equal [], sorter.sort(array)
  end

  def test_it_sorts_an_array_that_includes_duplicate_elements
    sorter = InsertionSort.new
    array = [2, 6, 1, 2, 3, 4, 5, 4]

    assert_equal [1, 2, 2, 3, 4, 4, 5, 6], sorter.sort(array)
  end

  def test_it_sorts_an_array_that_includes_negative_numbers
    sorter = InsertionSort.new
    array = [2, -1, 5, 4, -3]

    assert_equal [-3, -1, 2, 4, 5], sorter.sort(array)
  end

  def test_it_sorts_arrays_in_reversed_order
    sorter = InsertionSort.new
    array = [6, 5, 4, 3, 2, 1]

    assert_equal [1, 2, 3, 4, 5, 6], sorter.sort(array)
  end

  def test_it_sorts_a_shuffled_array_with_100_items
    sorter = InsertionSort.new
    array = (1..100).to_a.shuffle

    assert_equal (1..100).to_a, sorter.sort(array)
  end

  def test_it_removes_element_from_unsorted_array
    sorter = InsertionSort.new
    array = [2, 5, 1, 4]
    sorter.remove_element_from_array(array)

    assert_equal [5, 1, 4], array
  end
end
