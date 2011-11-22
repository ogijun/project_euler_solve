m = 10**10
a = 0
for i in 1..1000
  p = 1
  for ii in 1..i
    p *= i%m
  end
  a += p%m
  a %= m
end

p a