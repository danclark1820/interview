def steps(s)
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y","z"]
  steps = 0
  a = s.split("")
  a_len = a.length
  a1 = a[0..a.length/2 -1]
  (0..a_len/2 - 1).each do |i|
    corres_letter = a[a_len - 1 -i]
    idx_l = alphabet.index(corres_letter)
    idx_a = alphabet.index(a[i])
    steps += (idx_l - idx_a).abs
  end
  steps
end

t = gets.to_i
(0...t).each do |i|
    lis = gets.strip.to_s
    res = steps(lis)
    puts res
end
