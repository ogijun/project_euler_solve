
class Integer
  def palindromic base = 10
    (s = self.to_s(base)) == s.reverse
  end
end

p 1.upto(10**6 - 1).reduce(0){ |r, i| r += i if i.palindromic(2) and i.palindromic(10) ; r }
