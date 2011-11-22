n = 2**1000

a = 0
while n > 0
  a += n%10
  n /= 10
end

p a