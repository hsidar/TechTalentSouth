def greeting(name)
  opener = ['Hi!', 'Hello,', 'Yo!', 'G\'day,']
  puts "#{opener.sample} #{name}!"
end

puts "What is your name?"

name = gets.chomp

greeting (name)
