words = eval('[' + open('26-50/words.txt').read + ']')
word_nums = words.map{ |w| w.split(//).map{ |c| c.ord - 64}.inject(&:+) }
max = word_nums.sort.last
triangle_numbers = (1..(Math.sqrt(max*2))).to_a.map{ |n| n*(n + 1)/2 }
p word_nums.find_all{ |n| triangle_numbers.include? n }.length