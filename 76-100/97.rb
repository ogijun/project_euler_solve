def pow_mod a, m, n
  i = 1
  while m > 0
    m, r = m.divmod(2)
    if r == 1
      i = (i*a)%n
    end
    a = (a*a)%n
  end
  i
end

p((28433*pow_mod(2, 7830457, 10**10) + 1)%10**10)