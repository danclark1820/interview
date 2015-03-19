require 'pry'
def  insertionSort(ar)
  val = ar[-1]
  i = ar.length - 2
  while i >= -1
    if ar[i] > val
      ar[i+1] = ar[i]
    elsif ar[i] < val
      ar[i+1] = val
      i = -2
    end
    i -= 1
    puts ar.join(" ")
  end
end

count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )
