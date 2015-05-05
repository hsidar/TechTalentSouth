def perfect_squares(array)
  result = array.select { |x| Math.sqrt(x).to_i % 1 == 0 } #filter logic goes inside the block argument
  puts result
end

perfect_squares([1,2,3,4,5,6])