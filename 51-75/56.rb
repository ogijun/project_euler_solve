def digi_sum n
  sum = 0
  while n > 1
    sum += n%10
    n /= 10
  end
  sum
end

a = 0
for i in 1...100
  for j in 1...100
    d = digi_sum i**j
    a = d if d > a
  end
end

p a