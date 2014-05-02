def fib(n)
  if n == 0
    0
  elsif n == 1 || n == 2
    1
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

