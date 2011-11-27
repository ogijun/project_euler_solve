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
until (p = next_p p + 2, primes) > 10
  primes.push p
end

p primes.reduce(&:+) + 2
