def is_palin n
  a = []
  while n > 0
    a << n%10
    n /= 10
  end
  a.eql? a.reverse
end

a = 0
for i in 900..999
  for j in i..999
    a = i*j if i*j > a and is_palin i*j
  end
end

p a