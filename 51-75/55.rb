def palindrome? n
  n.to_s == n.to_s.reverse
end

def lychrel? n, bound = 50
  while bound > 0
    break if palindrome?(n += n.to_s.reverse.to_i)
    bound -= 1
  end
  bound == 0
end

p 1.upto(10000).find_all { |a| lychrel? a }.length