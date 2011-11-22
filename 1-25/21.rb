tab = []
for i in 0..10000
  divs = [1]
  for j in 2..Math.sqrt(i)
    q, r = i.divmod j
    divs.push j, q if r == 0
  end
  tab[i] = divs.inject(&:+)
end

a = 0
tab.each_with_index do |e, i|
  if e > 1 && e < 10000 && i != e && tab[e] < 10000 && tab[e] == i
    a += i
  end
end

p a