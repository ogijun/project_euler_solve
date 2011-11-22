n = 1
for i in (1..100).to_a.reverse
  i /= 10 while i%10 == 0
  n *= i
  n /= 10 while n%10 == 0
end

a = 0
while n > 0
  a += n%10
  n /= 10
end

p a