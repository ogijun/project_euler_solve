digits = [1, 2, 3, 4, 5, 6, 7, 8, 9]
rr = []

for i1 in 0...9
  rest1 = digits.dup
  d1 = rest1.delete_at i1
  m1 = d1
  for i2 in 0...8
    rest2 = rest1.dup
    d2 = rest2.delete_at i2
    m2 = d1*10 + d2
    for i3 in 0...7
      rest3 = rest2.dup
      d3 = rest3.delete_at i3
      for i4 in 0...6
        rest4 = rest3.dup
        d4 = rest4.delete_at i4
        for i5 in 0...5
          rest5 = rest4.dup
          d5 = rest5.delete_at i5
          m3 = d3*100 + d4*10 + d5
          m4 = d2*1000 + m3
          r = m1*m4
          rr.push(r) if r.to_s.split('').sort == rest5.map(&:to_s)
          r = m2*m3
          rr.push(r) if r.to_s.split('').sort == rest5.map(&:to_s)
        end
      end
    end
  end
end

p rr.uniq.reduce(&:+)