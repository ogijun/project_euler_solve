require 'mathn'

def f n, a, b
  n**2 + a*n + b
end

def seq_len a, b
  n = 0
  n += 1 while (fn = f(n, a, b)) > 2 && fn.prime?
  n
end

longest = [0, nil, nil]
for a in -999..999
  putc 'o'
  for b in -999..999
    n = seq_len a, b
    putc '.'
    longest = [n, a, b] if n > longest[0]
  end
end

p longest, longest[1]*longest[2]