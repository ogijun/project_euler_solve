COUNT = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten',
   'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

def num_to_eng n
  eng = ''
  if n == 1000
    eng = 'one thousand'
  elsif n < 20
    eng += COUNT[n]
  elsif n < 100
    d = n/10
    eng += [nil, nil, 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'][d]
    e = n%10
    eng += "-#{num_to_eng(e)}" if e > 0
  else
    h = n/100
    m = n%100
    eng = ''
    if h > 0
      eng += "#{num_to_eng(h)} hundred"
    end
    if m > 0
      eng += " and #{num_to_eng(m)}"
    end
  end
  eng
end

def letters n
  num_to_eng(n).tr(' -', '').length
end

a = 0
for i in 1..1000
  a += letters i
end

p a

p num_to_eng 1
p num_to_eng 143
p num_to_eng 431
p num_to_eng 31
p num_to_eng 100
p num_to_eng 430
p num_to_eng 300
p num_to_eng 1000

