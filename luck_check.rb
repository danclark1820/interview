def luck_check(str)
  #return "Error improper formatting" if str.class !== String || !str[0].to_i
  str = str.split.map!{|num| num.to_i}
  mid = str.length/2
  right = []
  left = []

  if str.length % 2 == 0
    left = str[0..mid-1]
    right = str[mid..str.length]
  else
    left = str[0..mid-1]
    right = str[mid+1..right]
  end

  if left.reduce(:+) == right.reduce(:+)
    true
  else
    false
  end

end
