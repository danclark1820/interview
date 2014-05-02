def string_sort(string)
  string.downcase!
  array = string.split
  pivot = array[array.length/2]
  left = []
  right = []
  array.each do |letter|
    if letter.ord > pivot.ord
      right << letter
    else
      left << letter
    end
  end
  string_sort(left.join) + pivot + string_sort(right.join)
end

string_sort("word")
