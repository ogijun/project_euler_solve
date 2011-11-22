result = Hash.new(0)

11.upto 1000 do |n|
  length = 1
  next if (n%2)*(n%3)*(n%5) == 0
  length += 1 until (10**length)%n == 1

  result[n] = length
end

p result.invert[result.values.sort.last]