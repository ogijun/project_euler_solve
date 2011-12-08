module Enumerable
  def sum
    self.reduce(0, &:+)
  end
end

class Integer
  def palindromic base = 10
    (s = self.to_s(base)) == s.reverse
  end
end

p (1..(10**6 - 1)).step(2).find_all{ |i| i.palindromic(2) and i.palindromic(10) }.sum
