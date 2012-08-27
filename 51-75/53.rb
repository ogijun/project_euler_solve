def ncr n, r
  if n == r || r == 0
    1
  else
    r = n - r if r < n/2
    ((r + 1)..n).to_a.reduce(:*).to_i / (1..(n - r)).to_a.reduce(:*).to_i
  end
end

count = 0
for n in 1..100
  for r in 0..n
    count += 1 if ncr(n, r) > 1000000
  end
end

p count