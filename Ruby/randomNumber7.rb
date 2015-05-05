number = 0
times = 0

while number != 7
  times += 1
  number = rand(1..10)
  puts number
end

puts "The number was finally 7!!!! It took #{times} tries."