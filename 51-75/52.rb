def letter n
  n.to_s.split(//).sort.join
end

a = 100008
l = letter a
while letter(2*a) != l || letter(3*a) != l || letter(4*a) != l || letter(5*a) != l || letter(6*a) != l
  a += 9
  l = letter a
end
p a
