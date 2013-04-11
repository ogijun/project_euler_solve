primes = eval(open(File.dirname(__FILE__) + '/primes_to_10000.rb').read)

class << primes
  def bsearch(e, l = 0, u = length - 1)
     if l <= u
       m = (l + u)/2
       e < self[m] ? u = m - 1 : l = m + 1
       e == self[m] ? m : bsearch(e, l, u)
     end
  end
end


for n in 1000..9999
  next unless primes.bsearch n
  digits = n.to_s.split ''
  next if digits.include? '0'
  perm = digits.permutation.to_a.map{ |a| a.join.to_i }.sort.uniq - [n]
  for d in perm
    p [n, d, d*2 - n] if n < d && perm.include?(d*2 - n) && primes.bsearch(d) && primes.bsearch(d*2 - n)
  end
end
  