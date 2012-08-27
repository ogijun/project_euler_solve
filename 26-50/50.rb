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

require 'benchmark'

puts Benchmark.measure {

  ub = 1000000
  answer = []
  seq = []
  sum = 0
  primes.each do |high_p|
    break if high_p > ub
    seq.push high_p
    sum += high_p
    if sum < ub && sum%2 != 0 && primes.bsearch(sum)
      answer.push [sum, seq.length]
    end
    subseq = seq.dup
    subsum = subseq.reduce(:+)
    while subseq.length > 2
      sub = subseq.shift
      subsum -= sub
      if subsum < ub && subsum%2 != 0 && primes.bsearch(subsum)
        answer.push [subsum, subseq.length]
      end
    end
  end

  p answer.sort_by(&:last).last.last

}
