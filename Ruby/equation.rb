#my_square_equations([2,4])
##=> ["2 * 2 = 4",
#     "4 * 4 = 16"]


def my_square_equations(array)
  # complete me
  return array.map{ |x| "#{x} * #{x} = #{x * x}" }
end

puts my_square_equations([2,4])