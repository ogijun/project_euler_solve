def gcd n, m
  n, m = m, n if n < m
  until n%m == 0
    n, m = m, n%m
  end
  m
end

n = 1
for i in 1..20
  n *= (i / gcd(n, i))
end

p n