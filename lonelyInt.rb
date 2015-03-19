#!/bin/ruby
def  lonelyinteger(a)
  a.sort!
  i=0
  while i < a.length
    if a[i] != a[i+1]
      return a[i]
    end
    i += 2
  end
end
a = gets.chomp.to_i
b = gets.chomp.split(" ").map! {|i| i.to_i}
puts lonelyinteger(b)
