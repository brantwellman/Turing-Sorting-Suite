require_relative '../lib/merge_sort'
require 'minitest'
require 'minitest/autorun'

class MergeSortTest < Minitest::Test
  def test_it_exists
    sorter = MergeSort.new
    assert sorter
  end

  def test_it_splits_an_array_into_single_arrays
    skip
    sorter = MergeSort.new
    array = [4, 3, 2, 1]

    assert_equal nil, sorter.halve(array)
  end
end
