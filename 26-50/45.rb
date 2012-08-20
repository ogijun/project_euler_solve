
def triangle k
  k*(k - 1)/2
end

def pentagonal k
  k*(3*k - 1)/2
end

def hexagonal k
  k*(2*k - 1)
end

def next_triangle n
  k = Math.sqrt(n*2).ceil
  l = triangle(k)
  l >= n ? l : triangle(k + 1)
end

def next_pentagonal n
  k = Math.sqrt(n*2/3.0).ceil
  l = pentagonal(k)
  l >= n ? l : pentagonal(k + 1)
end

def next_hexagonal n
  k = Math.sqrt(n/2.0).ceil
  l = hexagonal(k)
  l >= n ? l : hexagonal(k + 1)
end

stack = []
n = 1
while stack.length < 3
  nn = next_triangle(next_pentagonal(next_hexagonal(n)))
  if nn == n
    stack.push n
    n += 1
  else
    n = nn
  end
end

p stack.last