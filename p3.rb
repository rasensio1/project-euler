require 'pry'

num = 600851475143
div = 1

until div >= num/2 do
  div +=1
  if num % div == 0
    num /= div 
  end
end

puts num 

#was forgetting that the remainin num, not the divisor is the largest prime. 
