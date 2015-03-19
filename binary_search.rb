def bsearch(array, val, left = 0, right = nil)
  right = array.size - 1 if !right
  mid = (left + right)/2

  return nil if left > right

  if val == array[mid]
    return mid
  elsif val > array[mid]
    bsearch(array, val, mid + 1, right)
  else
    bsearch(array, val, left, mid - 1)
  end
end


print bsearch([1,2,3,4], 2)


def quicksort(list)
   return list if list.length <= 1
   pivot = list.shift
   left, right = list.partition { |el| el < pivot }
   quicksort(left) + [pivot] + quicksort(right)
end
