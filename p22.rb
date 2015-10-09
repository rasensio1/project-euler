require 'pry'

SCORES = %w(- A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) 
file = File.open('assets/names.txt', 'r')
names = file.read.gsub("\"", '').gsub("\n", '').split(',').sort

def score(word)
  word.chars.reduce(0) do |sum, let|
    sum += SCORES.index(let)
  end
end

def total_score(list)
  list.reduce(0) do |sum, name|
    sum += score(name) * (list.index(name) + 1)
  end
end

puts total_score(names)
