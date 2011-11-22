a = 2
b = [1, 2]
i = 1
while b[i] < 4000000 do
  i += 1
  b << b[i - 1] + b[i - 2]
  a += b[i] if i%3 == 1
end
p a