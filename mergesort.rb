# frozen_string_literal: true

# require 'pry-byebug'

# write recursive mergesort method
def merge_sort(array)
  if array.length < 2
    return array
  else
    left = array.slice(0, array.length / 2)
    right = array.slice(array.length / 2, array.length)
    left = merge_sort(left)
    right = merge_sort(right)
  end
  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left[0] <= right[0]
      result << left[0]
      left = left.slice(1, left.length)
    else
      result << right[0]
      right = right.slice(1, right.length)
    end
  end

  until left.empty?
    result << left[0]
    left = left.slice(1, left.length)
  end

  until right.empty?
    result << right[0]
    right = right.slice(1, right.length)
  end
  result
end

sorted_list = merge_sort([1, 2, 4, 10, 8, 9, 3])
p sorted_list