#def my_equation(array, &block)
#  return array.map{ |x| "#{x} * #{x} = #{yield}" }
#  &block
#end
#
##array = [1,2,3]
#my_equation(array, {|i| i*i})
####=> ["1 * 1 = 1",
###     "2 * 2 = 4",
###     "3 * 3 = 9"]
##
##my_equation(array, {|i| i*2})
####=> ["1 * 2 = 2",
###     "2 * 2 = 4",
###     "3 * 2 = 6"]
#



def equations(array)
  array.map { |i| yield i }
end

array = [1,2,3,4]
puts equations(array) { |i| "#{i} * 2 = #{i*2}" }
puts equations(array) { |i| "#{i} * #{i} = #{i*i}" }