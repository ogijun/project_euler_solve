module Enumerable
  def sum
    self.reduce(0, &:+)
  end

  def prod
    self.reduce(1, &:*)
  end
end

class Integer
  def valid?
    self == self.to_s.split('').map{|d| d.to_i.!}.sum
  end

  def !
    (2..self).prod
  end
end

upper_bound = 9999999
p 3.upto(upper_bound).find_all(&:valid?).sum