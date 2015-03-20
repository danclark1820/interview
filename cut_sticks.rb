require 'pry'
def cut_sticks(a)
  b = a.sort
  cuts = b.length

  puts cuts
  while b.length - 1 > 0
    min = b[0]
    b = b.drop_while{|x| x <= min}
    cuts += b.length
    puts b.length
  end
end

l = gets.to_i
a_s = gets.strip.split(" ")
a = a_s.map!{|x| x.to_i}
cut_sticks(a)
