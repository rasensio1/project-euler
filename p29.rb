range = (2..100).to_a

nums = []
range.map do |i|
  range.map do |j|
    nums << i ** j
  end
end

puts nums.uniq.count
