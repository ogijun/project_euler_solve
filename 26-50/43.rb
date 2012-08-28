digits0 = (0..9).to_a

sum = 0
for d0 in digits0
  next if d0 == 0
  digits1 = digits0.dup - [d0]
  for d1 in digits1
    digits2 = digits1.dup - [d1]
    for d2 in digits2
      digits3 = digits2.dup - [d2]
      for d3 in digits3
        next if d3%2 != 0
        digits4 = digits3.dup - [d3]
        for d4 in digits4
          next if (d2 + d3 + d4)%3 != 0
          digits5 = digits4.dup - [d4]
          for d5 in digits5
            next if d5%5 != 0
            digits6 = digits5.dup - [d5]
            for d6 in digits6
              next if [d4, d5, d6].join.to_i%7 != 0
              digits7 = digits6.dup - [d6]
              for d7 in digits7
                next if [d5, d6, d7].join.to_i%11 != 0
                digits8 = digits7.dup - [d7]
                for d8 in digits8
                  next if [d6, d7, d8].join.to_i%13 != 0
                  digits9 = digits8.dup - [d8]
                  for d9 in digits9
                    next if [d7, d8, d9].join.to_i%17 != 0
                    sum += [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9].join.to_i
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

p sum