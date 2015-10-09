require 'pry'

def want_it?(num)
  if sum_of_dig_to_5(num) == num
    true
  end
end

def sum_of_dig_to_5(num)
  num.to_s.chars.map(&:to_i).reduce(0){ |sum, num| sum += num ** 5 }
end

range = (2..1000000).to_a

ans = range.select do |num|
  want_it?(num)
end.reduce(:+)

puts ans



