require 'date'
start = Date.new(1901, 1, 1)
last = Date.new(2000, 12, 31)

sundays = []

until start == last 
  sundays << 1 if start.sunday? && start.day == 1
  start = start.next
end

puts sundays.count
