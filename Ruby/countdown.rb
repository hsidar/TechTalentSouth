puts "Pick a number between 1 and 10."

selection = gets.chomp.to_i

until selection == 1
  selection -= 1
  puts selection
end