a = 0
for i in 1...1000 do
  a += i if (i%3)*(i%5) == 0
end
p a