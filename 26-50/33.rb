def check m, n
  return false if m < n || (n*m)%100 == 0 
  d = gcd m, n
  return false if d == 1
  nn = n.to_s
  mm = m.to_s
  if nn[0] == mm[1]
    nn[1].to_f/mm[0].to_f == n.to_f/m.to_f
  elsif nn[1] == mm[0]
    nn[0].to_f/mm[1].to_f == n.to_f/m.to_f
  else
    false
  end
end

def gcd m, n
  m, n = n, m if m < n
  n == 0 ? m : gcd(n, m%n)
end

rm, rn = 1, 1

for m in 11..99
  for n in 11...m
    if check(m, n)
      rm *= m
      rn *= n
      rd = gcd(rm, rn)
      rm /= rd
      rn /= rd
    end
  end
end

p [rm, rn]