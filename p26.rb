require 'pry'

def longest_cycle
  (1..999).to_a.max_by { |n| n.cycle_length }
end

def cycle_length

end


puts longest_cycle 
