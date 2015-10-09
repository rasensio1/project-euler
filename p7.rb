require 'prime'
primes = []

Prime.each do |prime|
  if primes.size < 10_001
     primes << prime 
  else
    puts primes.last
    break
  end
end
