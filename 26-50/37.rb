# primes = [2, 3, 5]
primes = eval(open(File.dirname(__FILE__) + '/primes_to_1000000.rb').read)

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

def next_p primes
  n = primes.last + 2
  n += 2 until felmat_test(n, 2) && div_test(n, primes)
  n
end

def prime? n, primes
  while n > primes.last
    primes.push next_p(primes)
  end
  primes.include? n
end

def right_truncatable? n, primes
  n/=10 while prime? n, primes
  n == 0
end

def left_truncatable_primes_for_depth depth, prev_depth, primes
  cur_depth = []
  for left_p in prev_depth
    next if ((left_p.to_s[0, 1].to_i % 2) % 5) == 0
    for i in 1..9
      n = (i.to_s + left_p.to_s).to_i
      cur_depth.push n if prime? n, primes
    end
  end
  cur_depth
end

require 'benchmark'

puts Benchmark.measure {
  truncate_primes = []
  left_truncatable = [[3, 7]]
  depth = 1
  while truncate_primes.flatten.length < 11 do
    cur_depth = left_truncatable_primes_for_depth depth, left_truncatable[depth - 1], primes
    left_truncatable.push cur_depth
    truncate_primes.push cur_depth.find_all { |n| right_truncatable? n, primes }
    depth += 1
  end
  p truncate_primes.flatten.reduce(:+)
}