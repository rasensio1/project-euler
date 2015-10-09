require 'pry'
ONES = ['','one','two','three','four','five','six','seven','eight','nine']
TEENS = ['ten','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
TENS = ['', 'ten', 'twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']

def find_string(num)
  if num >= 100 
    last_dig(num) + first_two_digs(num)
  else
    first_two_digs(num)
  end
end

def last_dig(num)
  if num/100 *100 == num
    ONES[num/100] + "hundred"
  else
    ONES[num/100] + "hundredand"
  end
end

def first_two_digs(num)
  i = num.to_s.reverse[0..1].reverse.to_i

  if i < 10
    ones(i)
  elsif i.between?(10, 19)
    teens(i)
  elsif i.between?(20 ,99) 
    TENS[i/10] + ONES[i.to_s.reverse[0].to_i]
  else
    ''
  end
end

def ones(i)
  ONES[i]
end

def teens(i)
  TEENS[i-10]
end

letters = (1..999).to_a.map { |num| find_string(num) }.join
ans = letters.length + "onethousand".length

puts ans
