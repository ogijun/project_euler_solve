def div_test n, primes
  answer = true
  for p in primes
    break if n < p*p
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

primes = []
p = 1
10000.times do
  p = next_p p + 2, primes
  primes.push p
end

p primes.last