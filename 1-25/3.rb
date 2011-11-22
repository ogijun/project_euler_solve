def div_test n, primes
  answer = true
  for p in primes
    answer = false if n%p == 0
  end
  answer
end

def next_p p, primes
  until div_test p, primes
    p += 2
  end
  p
end

n = 600851475143
p = 3
primes = []
until n == 1
  primes << p
  while n%p == 0
    n /= p
  end
  p = next_p p, primes
end

p primes.last