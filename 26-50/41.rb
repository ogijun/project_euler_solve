primes = eval(open(File.dirname(__FILE__) + '/primes_to_1000000.rb').read)
digits = %w(1 2 3 4 5 6 7)

def div_test n, primes
  answer = true
  for p in primes
    break if p*p > n
    answer = false if n%p == 0
  end
  answer
end

def felmat_test n, a
  pow_mod(a, n - 1, n) == 1
end

def pow_mod a, m, n
  i = 1
  while m > 0
    m, r = m.divmod(2)
    if r == 1
      i = (i*a)%n
    end
    a = (a*a)%n
  end
  i
end

def prime? n, primes
  felmat_test(n, 2) && div_test(n, primes)
end


def iter rest, digits, primes, pan_primes
  if rest.length == 0
    pan_primes.push digits.join.to_i if prime? digits.join.to_i, primes
  end
  rest.each do |d|
    iter rest - [d], digits + [d], primes, pan_primes
  end
end

iter digits, [], primes, pan_primes = []
p pan_primes.sort.last