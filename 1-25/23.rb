class Integer
  def abundant?
    self.sum_of_divisors > self
  end

  def sum_of_divisors
    sum = 1
    (2..(Math.sqrt(self))).each do |i|
      if self%i == 0
        sum += (i + self/i)
        sum -= i if i == self/i
      end
    end
    sum
  end
end

table = Hash.new{ |h, k| h[k] = k.abundant? }

answer = 0
(1..28123).each do |i|
  valid = false
  (12..(i/2)).each do |j|
    next unless table[j]
    valid ||= table[(i - j)]
    break if valid
  end
  answer += i unless valid
end

p answer