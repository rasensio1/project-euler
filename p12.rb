require 'pry'

def divisors(num)
  count = (1..Math.sqrt(num)).to_a.select { |div| num % div == 0 }.count * 2
  count += 1 if Math.sqrt(num).to_i ** 2 == num
  count
end

i = 0
yes = false
triangle_no = 0

until yes == true do
  i += 1
  triangle_no += i
  if divisors(triangle_no) > 500
    puts triangle_no
    break
  end
end

