for i in 9234..9876
  p [i, i*2].join if (i.to_s + (i*2).to_s + '0').split(//).sort.uniq.length == 10
end