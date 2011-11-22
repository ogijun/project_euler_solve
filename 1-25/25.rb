fib = [0, 1]

a = 1
until fib[a] > 10**999
  a += 1
  fib.push fib[a - 1] + fib[a - 2]
end

p a