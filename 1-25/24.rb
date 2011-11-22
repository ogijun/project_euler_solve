digits = (0..9).to_a.map(&:to_s)
pos = 1_000_000 - 1

def factorial n
  n.downto(1).inject(1){ |r, i| r *= i }
end

result = []

until digits.empty?
  unit = factorial(digits.length - 1)
  quo = pos/unit
  pos -= quo*unit

  result.push(digits.delete_at(quo))
end

p result.join