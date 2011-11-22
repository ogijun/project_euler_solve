require 'mathn'

hash = {}
for a in 2..100
  for b in 2..100
    hash[a.prime_division.sort.map{|c| [c[0], c[1]*b] }.to_s] = true
  end
end

p hash.keys.length