all_pentagonal = Hash.new { false }

def nth_pentagnal n
  n*(3*n - 1)/2
end

def pentagonal n
  
end

n = 1
while true
  cur_pent = nth_pentagnal n
  all_pentagonal[cur_pent] = true
  for m in 2..(n - 2)
    b = all_pentagonal.keys[m]
    a = cur_pent - b
    if all_pentagonal[a] && all_pentagonal[a - b]
      p a - b
      exit
    end
  end
  n += 1
end
