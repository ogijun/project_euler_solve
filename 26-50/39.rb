def right? x, y, z
  x**2 + y**2 == z**2
end

def solve n
  a = []
  for x in 1..(n/3)
    for y in (x + 1)..(2*n/3)
      z = n - x - y
      break if y >= z
      a.push [x, y, z] if right? x, y, z
    end
  end
  a
end

max = []
for n in 1..1000
  sol = solve n
  max = sol if sol.length >= max.length
end

p max, max.first.reduce(:+)