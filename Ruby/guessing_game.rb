require 'pry'

number = rand(100)

tries = 10

until tries == 0

  puts "Pick a number between 1 and 100."

  guess = gets.chomp.to_i

#  if guess == number
#    puts "yup"
#    break
#  elsif guess >= number - 5 && guess <= number + 5
#    if guess < number
#      puts "close and higher"
#    elsif guess > number
#      puts "close and lower"
#    end
#  elsif guess > number
#    puts "lower"
#  elsif guess < number
#    puts "higher"
#  end

  case guess
    when number
      puts "win win!"
      break
    when number - 5 .. number
        puts "close but the number is higher"
    when number .. number + 5
        puts "close but the number is lower"
    when 1 .. number
        puts "number is higher"
    when number .. 100
        puts "number is lower"
    else
    puts "Not a valid entry. Way to waste a turn."
  end
  
  tries -= 1
  puts "Tries left: #{tries}"

end

binding.pry

if tries == 0
puts "you lost! The number was #{number}"
end