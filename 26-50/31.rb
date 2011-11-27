require 'pp'

def calc uses, left_coins, patterns
  total = uses.reduce(0){ |r, i| r += i[0]*i[1] }
  if left_coins.length == 1
    patterns.push uses + [[1, 200 - total]]
  else
    new_coins = left_coins.dup
    use_coin = new_coins.shift
    use_num = 0
    while total + use_coin*use_num <= 200
      new_uses = uses + [[use_coin, use_num]]
      calc(new_uses, new_coins, patterns)
      use_num += 1
    end
  end
  patterns
end

coins = [200, 100, 50, 20, 10, 5, 2, 1]
patterns = []
calc [], coins, patterns

p patterns.length