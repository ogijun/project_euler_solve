names = eval("[#{File.open('names.txt').gets}]")

class String
  def score
    self.unpack('c*').map{ |c| c - 64 }.reduce(0){ |a, i| a += i }
  end
end

total = 0
names.sort.each_with_index{ |n, i| total += n.score*(i + 1) }
p total