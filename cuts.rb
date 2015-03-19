def cuts(k)
  pieces = 0
  half_k = k / 2
  if k % 2 == 1
    return half_k * (half_k + 1)
  else
    return half_k * half_k
  end
end
