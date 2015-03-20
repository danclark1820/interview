require 'pry'
def insertionSort(ar)
  val = ar[ar.length-1]
  i = ar.length - 1
  while i > 0
    if val < ar[i-1]
      ar[i] = ar[i-1]
    elsif ar[i] >= ar[i-1]
      ar[i] = val
      puts ar.join(" ")
      break
    end
    puts ar.join(" ")
    i -= 1
  end
  if i == 0
    ar[0] = val
    puts ar.join(" ")
  end
end

count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )
