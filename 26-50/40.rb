def seq n
  s = [0]
  1.upto(n) do |i|
    s += i.to_s.split('').map(&:to_i)
  end
  s
end

s = seq 200000

p s[1]*s[10]*s[100]*s[1000]*s[10000]*s[100000]*s[1000000]