cars = {
'altima' => 'nissan',
'camry' => 'toyota',
'rx7' => 'mazda'
}

puts "What model car do you drive?"
car = gets.chomp

flag = 0

cars.each do |key, value|
  if car.upcase == key.upcase
    puts "That is a #{value}. You must be very proud."
    flag = 1
    break
  end
end

if flag == 0
  puts "Is that even a car? It does not even have wheels. You must be drunk."
end