def all_the_way_down(num)
    num = num - 1
    all_the_way_down(num) if num > 0
    puts "1 turtle @ #{num}"
end

all_the_way_down(5)

#=> 1 turtle @ 0
#=> 1 turtle @ 1
#=> 1 turtle @ 2
#=> 1 turtle @ 3
#=> 1 turtle @ 4