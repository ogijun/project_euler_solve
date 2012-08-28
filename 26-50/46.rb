primes = eval(open(File.dirname(__FILE__) + '/primes_to_1000000.rb').read)

class << primes
  def bsearch(e, l = 0, u = length - 1)
     if l <= u
       m = (l + u)/2
       e < self[m] ? u = m - 1 : l = m + 1
       e == self[m] ? m : bsearch(e, l, u)
     end
  end
end

odd = 9
loop do
  cond = false
  1.upto(Math.sqrt(odd).floor) do |k|
    r = odd - 2*k*k
    if primes.bsearch(r)
      cond = true
      break
    end
  end
  break unless cond
  odd += 2
  odd += 2 until !primes.bsearch(odd)
end

p odd