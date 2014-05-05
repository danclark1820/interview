require 'pry'

def merge_sort(array)
  return array if array.length <= 1

  middle = (array.length / 2)
  left = array[0..middle-1]
  right = array[middle..array.length - 1]

  return merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  result = Array.new

  while left.length > 0 || right.length > 0
    if left.length > 0 && right.length > 0
      if left[0] <= right[0]
        result << left.shift
      else
        result << right.shift
      end
    elsif left.length > 0
      result.concat left.slice!(0..left.length)
    elsif right.length > 0
      result.concat right.slice!(0..right.length)
    end
  end

  return result
end



list = [28, 3, 1, 35, 7, ]

print merge_sort(list)
