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

def prime_factor n, primes
  factor = Hash.new(0)
  while n > primes.last**2
    primes.push next_p primes.last + 2, primes
  end

  for p in primes
    break if n < p**2
    while n%p == 0
      n /= p
      factor[p] += 1
    end
  end
  factor[n] += 1 if n > 1
  factor
end

def num_of_divs n, primes
  prime_factor(n, primes).values.map{|p| p + 1}.inject(&:*)
end

primes = [2, 3]
a = n = 1
until a > 500
  n += 1
  a = num_of_divs n*(n + 1)/2, primes
  p [n, a]
end

p n*(n + 1)/2