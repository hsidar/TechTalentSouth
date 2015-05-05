poodles = {'Toy Poodle' => 'Bark', 'Labradoodle' => 'Bark', 'Doubledoodle' => 'Bark', 'Eskapoo' => 'Bark', 'Pyredoodle' => 'Bark', 'Rottle' => 'Bark'}

#introductions = ['And here we have a ', 'Now gaze upon the ', 'In this corner you see a ', 'What a marvelous ', 'Ah, what a glorious ']

#favorite = 'Doubledoodle'

poodles.each do |poodle, sound|
#  if poodle == favorite
#    puts "Dis dog here is one damn desirable designer Doubledoodle dagnabbit!!"
#  else
#    puts introductions.sample + poodle
#  end  
  puts "The #{poodle} says #{sound}"

end 