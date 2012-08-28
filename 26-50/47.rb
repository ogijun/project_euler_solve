primes = eval(open(File.dirname(__FILE__) + '/primes_to_1000000.rb').read)

def prime_factor n, primes
  factor = Hash.new(0)

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

length = 4
k = 1
ring = [nil]*length
loop do
  f = prime_factor(k, primes).map{ |p, i| p**i }
  ring.push f.length == length ? f : nil
  ring.shift
  break if ring.compact.length == length && ring.flatten.length == ring.flatten.sort.uniq.length
  k += 1
end

p k - length + 1, ring