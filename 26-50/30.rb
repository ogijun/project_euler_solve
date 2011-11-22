answer = 0
2.upto(9**5*7) do |n|
  sum = 0
  q = n
  loop do
    q, r = q.divmod(10)
    sum += r**5
    break if q == 0
  end
  answer += n if sum == n
end

p answer