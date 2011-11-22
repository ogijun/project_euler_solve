def fac n
  f = 1
  while n > 1
    f *= n
    n -= 1
  end
  f
end

p((fac 40)/(fac 20)**2)