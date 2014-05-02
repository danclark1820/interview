def factorial(n)
  if n == 0
    1
  end
  while n > 0
    return * factorial(n-1)
  end
end

print factorial(6)
