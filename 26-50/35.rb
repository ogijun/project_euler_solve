require 'mathn'

class Integer
  def rot
    q, r = self.divmod 10
    d, n = 0, self
    d, n = d + 1, (n/10).to_i while n > 0
    q + 10**(d - 1)*r
  end

  def all_rot
    r = self
    a = [r]
    a.push r until (r = r.rot) == self
    a
  end
end

checked = Hash.new(nil)
1.upto(10**6 - 1) do |n|
  next if n.to_s =~ /0/
  next unless checked[n].nil?
  all_prime = true
  n.all_rot.each do |r|
    all_prime &&= r.prime?
    break unless all_prime
  end

  n.all_rot.each do |r|
    checked[r] = all_prime
  end
end

p checked.keys.find_all{ |i| checked[i] }.length