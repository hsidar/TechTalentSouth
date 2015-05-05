marcus = {'name' => 'Marcus', 'age' => 35, 'location' => 'Morrisville', 'food' => 'Hamburgers'}

#puts "My name is #{marcus['name']}"
#puts "I am #{marcus['age']} years old."
#puts "I live in #{marcus['location']}."
#puts "My favorite food is #{marcus['food']}."

#  stuff = ["My name is \#{y}", "I am \#{y} years old.", "I live in \#{y}.", "My favorite food is \#{y}."]

#more_stuff = []

count = 0


marcus.each do |x, y|
  stuff = ["My name is #{y}", "I am #{y} years old.", "I live in #{y}.", "My favorite food is #{y}."]
  puts stuff[count]
  count += 1
  #  more_stuff.push(stuff[count].delete('\\'))
  #  puts more_stuff[count]
end