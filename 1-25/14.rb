tab = {1 => 1}

def collatz n, tab
  if tab[n].nil?
    if n%2 == 0
      m = n/2
    else
      m = 3*n + 1
    end
    tab[n] = 1 + collatz(m, tab)
  else
    tab[n]
  end
end

max = 0
a = 0
for i in 1..1000000
  len = collatz i, tab
  next if len < max
  max = len
  a = i
end

p a