def merge_sort(array)
  # Base case
  return array if array.length < 2

  # Recursive case
  # Find middle index
  mid_index = array.length / 2

  # Sort the left half of the array
  left_array = merge_sort(array[...mid_index])

  # Sort the right half of the array
  right_array = merge_sort(array[mid_index..])

  # Merge the two
  result = []
  until left_array.empty? && right_array.empty?
    if left_array.empty?
      result << right_array.shift
    elsif right_array.empty?
      result << left_array.shift
    else
      if left_array[0] < right_array[0]
        result << left_array.shift
      else
        result << right_array.shift
      end
    end
  end
  result

end

test_array1 = [5, 2, 1, 3, 6, 4]
test_array2 = [4, 8, 6, 2, 1, 7, 5, 3]
test_array3 = [5, 1, 2, 2, 1, 4, 3, 5, 5]

p merge_sort(test_array1)
p merge_sort(test_array2)
p merge_sort(test_array3)