for a in 1..333
  for b in a..1000
    break if a + b > 1000
    c2 = a*a + b*b
    c = (Math.sqrt c2).floor
    next if c2 != c*c
    if a + b + c == 1000
      p a*b*c
      break
    end
  end
end  